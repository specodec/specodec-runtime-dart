import { execSync } from 'child_process';
import { existsSync, mkdirSync, rmSync, readdirSync, writeFileSync, readFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dir = dirname(fileURLToPath(import.meta.url));
const CACHE = join(__dir, '.tests-cache');
const EMIT_GEN = join(__dir, 'emit_gen');
const OUT_DIR = join(__dir, 'output');

function run(cmd) {
  console.log('  >', cmd);
  execSync(cmd, { stdio: 'inherit' });
}

console.log('\n=== Step 1: Install dependencies ===');
run(`cd ${__dir} && npm install`);

console.log('\n=== Step 2: Using cached .tests-cache ===');

console.log('\n=== Step 3: Generate vectors ===');
run(`cd ${CACHE} && npm install --frozen-lockfile`);
run(`cd ${CACHE} && node gen_types.mjs`);

const VEC_DIR = join(CACHE, 'vectors');

console.log('\n=== Step 4: Generate emit code ===');
if (existsSync(EMIT_GEN)) rmSync(EMIT_GEN, { recursive: true });
mkdirSync(EMIT_GEN, { recursive: true });

run(`cd ${__dir} && node_modules/.bin/tsp compile ${CACHE}/alltypes.tsp --emit=@specodec/typespec-emitter-dart \
  --option @specodec/typespec-emitter-dart.emitter-output-dir=${EMIT_GEN}`);

const dartFiles = readdirSync(EMIT_GEN).filter(f => f.endsWith('.dart'));
if (dartFiles.length > 0) {
  console.log(`  ✓ Generated ${dartFiles.join(', ')}`);
  
  // Create proper Dart package structure
  mkdirSync(join(EMIT_GEN, 'specodec_all_types'), { recursive: true });
  for (const f of dartFiles) {
    const src = join(EMIT_GEN, f);
    const dest = join(EMIT_GEN, 'specodec_all_types', f);
    let content = readFileSync(src, 'utf-8');
    content = `library specodec_all_types;\n\n` + content;
    writeFileSync(dest, content);
    rmSync(src);
  }
  console.log(`  ✓ Created specodec_all_types package`);

} else {
  console.error('  FAIL: No generated Dart files');
  process.exit(1);
}

console.log('\n=== Step 5: Generate test runner ===');
mkdirSync(join(__dir, 'emit'), { recursive: true });
run(`cd ${__dir} && VEC_DIR=${VEC_DIR} node generate_emit_runner.mjs`);

console.log('\n=== Step 6: Setup pubspec.yaml ===');
const pubspec = `name: emit_dart
version: 1.0.0

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  specodec:
    path: ../../..
  path: ^1.8.0
`;
writeFileSync(join(__dir, 'emit', 'pubspec.yaml'), pubspec);

console.log('\n=== Step 7: Run tests ===');
if (existsSync(OUT_DIR)) rmSync(OUT_DIR, { recursive: true });
mkdirSync(OUT_DIR, { recursive: true });

try { run(`cd ${__dir}/emit && dart pub get`); } catch (e) { console.log("Dart pub get completed (some failures expected)"); }
try { run(`cd ${__dir}/emit && VEC_DIR=${VEC_DIR} OUT_DIR=${OUT_DIR} dart run main.dart`); } catch (e) { console.log("Dart tests completed (some failures expected)"); }

console.log('\n=== Step 8: Compare output ===');
const manifest = JSON.parse(readFileSync(join(VEC_DIR, 'manifest.json'), 'utf-8'));
let match = 0, mismatch = 0;

for (const [name] of Object.entries(manifest.scalars || {})) {
  const expected = join(VEC_DIR, 'scalars', `${name}.mp`);
  const actual = join(OUT_DIR, 'scalars', `${name}.mp`);
  if (!existsSync(actual)) { mismatch++; console.log(`MISSING: ${name}.mp`); continue; }
  if (readFileSync(expected).equals(readFileSync(actual))) match++;
  else { mismatch++; console.log(`MISMATCH: ${name}.mp`); }
}
for (const model of [...(manifest.testModels || []), ...(manifest.testUnions || [])]) {
  for (const [outExt, vecExt] of [['msgpack','msgpack'], ['json','json'], ['unformatted.json','json'], ['gron','gron']]) {
    const expected = join(VEC_DIR, `${model}.${vecExt}`);
    const actual = join(OUT_DIR, `${model}.${outExt}`);
    if (!existsSync(expected)) continue;
    if (!existsSync(actual)) { mismatch++; console.log(`MISSING: ${model}.${outExt}`); continue; }
    if (readFileSync(expected).equals(readFileSync(actual))) match++;
    else { mismatch++; console.log(`MISMATCH: ${model}.${outExt}`); }
  }
}
const total = match + mismatch;
console.log(`${match}/${total} match, ${mismatch} mismatch`);
if (mismatch > 0) process.exit(1);

console.log('\n=== ALL PASSED ===');