# Dart Runtime — Developer Reference

> **Emitter**: `/home/ytr/Specodec/typespec-emitter-dart/src/index.ts`

---

## 1. Type Mapping Table

| TypeSpec Type | Dart Type | Notes |
|---|---|---|
| `string` | `String` | |
| `boolean` | `bool` | |
| `int8`, `int16`, `int32` | `int` | 32-bit and smaller → `int` |
| `int64` | `BigInt` | |
| `uint8`, `uint16`, `uint32` | `int` | |
| `uint64` | `BigInt` | |
| `float32`, `float64`, `float`, `decimal` | `double` | f32 truncated via ByteData round-trip |
| `bytes` | `Uint8List` | (dart:typed_data) |
| `integer` | `int` | |
| Enum | native `enum` with `final int value` | |
| Array `<T>` | `List<T>` | |
| Record `<V>` | `Map<String, V>` | |
| Model | `class` with named constructor | |
| Union | `sealed class` + per-variant classes | |

---

## 2. Model Representation

Models are Dart **classes** with named constructors:

```dart
class MyModel {
  final String name;
  final int age;
  final List<String> tags;

  const MyModel({required this.name, required this.age, this.tags = const []});
}
```

Uses `const` constructors and `required` for mandatory fields. Optional fields have default values.

---

## 3. Optional / Nullable

- Optional fields use `T?` (nullable types).
- Required fields use `required this.field` in the constructor.
- `SpecUndefined` is a singleton: `const SpecUndefined._()` with `static const instance`.

---

## 4. Union Representation

Discriminated unions use Dart 3.0 **sealed classes**:

```dart
sealed class MyUnion {}

class VariantA extends MyUnion {
  final int value;
  const VariantA(this.value);
}

class Undefined extends MyUnion {
  const Undefined();
}
```

Encode/decode use `switch` with exhaustiveness checking on the sealed class hierarchy. The `_tag` field is emitted as a separate object field in encode.

---

## 5. Enum Representation

Native Dart `enum` with integer values:

```dart
enum Color {
  red(0),
  green(1),
  blue(2);

  final int value;
  const Color(this.value);
}
```

The integer value is used for msgpack encoding; string name for JSON/gron.

---

## 6. Ryu Implementation

- **Bit extraction**: `ByteData(4).setFloat32(0, f, Endian.big)` then `.getUint32(0, Endian.big)`. Same pattern for f64 with `ByteData(8)`.
- **All arithmetic uses `BigInt`** — Dart has no native `uint64` type, so the Ryu implementation uses Dart's arbitrary-precision integers (like TypeScript). This means no true 64-bit overflow semantics.
- **`mulShift32`/`mulShift64`**: Uses BigInt arithmetic: `(m * factor) >> shift`, then masked.
- **`decimalLength9`/`decimalLength17`**: BigInt comparisons.
- **`multipleOfPowerOf5_32`**: Iterative `pow5 *= BigInt.from(5)` loop.
- **`multipleOfPowerOf5_64`**: Uses `BigInt.from(5).pow(q)` (exponentiation).
- **Tables**: `List<BigInt>` arrays.

---

## 7. MsgPack Reader/Writer

**Reader** (`MsgPackReader`):
- Accumulates over `Uint8List` via `ByteData` view.
- Reads big-endian integers via `ByteData.getUint16/Uint32/Uint64`.
- `readFloat32`: `ByteData.getFloat32(0, Endian.big)`.
- `readFloat64`: `ByteData.getFloat64(0, Endian.big)`.
- `readInt64`/`readUint64`: Returns `BigInt`.
- Container tracking: `List<int>` for map/array nesting counts.

**Writer** (`MsgPackWriter`):
- Accumulates into `BytesBuilder` (efficient byte concatenation).
- Strings encoded to UTF-8 via `Utf8Encoder().convert(value)`.
- `writeFloat32`/`writeFloat64`: Uses `ByteData` to write big-endian IEEE 754 bytes.
- `writeInt64`/`writeUint64`: Converts `BigInt` to signed/unsigned msgpack format.

---

## 8. JSON Reader/Writer

**Reader** (`JsonReader`):
- Works on decoded `String` (via `utf8.decode(data)` from `dart:convert`).
- `_parseString`: Handles `\uXXXX` escapes **including surrogate pairs** (same algorithm as baseline: `cp = 0x10000 + ((cp - 0xD800) << 10) + (low - 0xDC00)`, then `String.fromCharCode(cp)`).
- NaN: `double.nan`; Infinity: `double.infinity` / `double.negativeInfinity`.
- `readInt64`/`readUint64`: Supports quoted string and bare number → `BigInt.parse()`.
- `readBytes`: Base64 decode via manual lookup table (no use of `dart:convert` base64).

**Writer** (`JsonWriter`):
- Accumulates via `StringBuffer`.
- NaN/Infinity: `"NaN"`, `"Infinity"`, `"-Infinity"` (quoted).
- `int64`/`uint64`: emitted as quoted decimal strings.
- `float32`: round-trips through `ByteData.setFloat32` then reads back before formatting.
- Uses `formatFloat32`/`formatFloat64` (Ryu) from `float_fmt.dart`.

---

## 9. Gron Reader/Writer

**Reader** (`GronReader`):
- Parses `path = value;` lines.
- Context stack: `List<_Ctx>` with `prefix`, `type`, `arrayIndex` fields.
- `_unescape`: handles `\uXXXX` via `int.parse(s.substring(i+1, i+5), radix: 16)` → `String.fromCharCode` — **no surrogate pair support**.
- NaN/Infinity: checks for quoted `"NaN"`, `"Infinity"`, `"-Infinity"`.
- `readInt64`/`readUint64`: unescapes then `BigInt.parse(s)`.

**Writer** (`GronWriter`):
- Accumulates `List<String>` lines.
- Path stack: `_segments: List<String>` starting with `["json"]`.
- `_nesting: List<_NestInfo>` with `depth` and `arrayIndex`.
- `int64`/`uint64`: quoted decimal strings.
- NaN/Infinity: quoted strings.
- Uses `formatFloat32`/`formatFloat64`.

---

## 10. State Management

- **Mutable** class-based state.
- Readers mutate `_pos`, `_firstField`/`_firstElem` stacks.
- Writers mutate internal `StringBuffer` or `BytesBuilder`.
- `SpecCodec<T>` is a `const` class holding encode/decode closures.

---

## 11. SpecReader / SpecWriter Interfaces

### SpecReader

```dart
abstract class SpecReader {
  void beginObject();
  bool hasNextField();
  String readFieldName();
  void endObject();
  void beginArray();
  bool hasNextElement();
  void endArray();
  String readString();
  bool readBool();
  int readInt32();
  BigInt readInt64();
  int readUint32();
  BigInt readUint64();
  double readFloat32();
  double readFloat64();
  void readNull();
  Uint8List readBytes();
  String readEnum();
  bool isNull();
  void skip();
}
```

### SpecWriter

```dart
abstract class SpecWriter {
  void writeString(String value);
  void writeBool(bool value);
  void writeInt32(int value);
  void writeInt64(BigInt value);
  void writeUint32(int value);
  void writeUint64(BigInt value);
  void writeFloat32(double value);
  void writeFloat64(double value);
  void writeNull();
  void writeBytes(Uint8List value);
  void writeEnum(String value);
  void beginObject(int fieldCount);
  void writeField(String name);
  void endObject();
  void beginArray(int elementCount);
  void nextElement();
  void endArray();
  Uint8List toBytes();
}
```

---

## 12. Emitter Generation Pattern

### Model encode
```dart
void writeMyModel(SpecWriter w, MyModel obj) {
  w.beginObject(2);
  w.writeField("name");
  w.writeString(obj.name);
  w.writeField("age");
  w.writeInt32(obj.age);
  w.endObject();
}
```

### Model decode
```dart
MyModel readMyModel(SpecReader r) {
  r.beginObject();
  String _name = "";
  int _age = 0;
  while (r.hasNextField()) {
    switch (r.readFieldName()) {
      case "name": _name = r.readString(); break;
      case "age": _age = r.readInt32(); break;
      default: r.skip(); break;
    }
  }
  r.endObject();
  return MyModel(name: _name, age: _age);
}
```

---

## 13. Known Quirks / Bugs

- **Ryu f32 `vmIsTrailingZeros` set unconditionally**: In `ryu_f32.dart` lines 62-67, when `q <= 9` and `mv % 5 == 0`, both `vrIsTrailingZeros` and `vmIsTrailingZeros` are set unconditionally, AND `vp` is decremented unconditionally. The correct behavior (from TypeScript/Python reference) should be `if ... else if (acceptBounds) ... else ...`. This means:
  - Even when `mv % 5 == 0`, `vmIsTrailingZeros` is always set to `multipleOfPowerOf5_32(mm, q)`.
  - `vp` is always decremented when `multipleOfPowerOf5_32(mp, q)` is true, regardless of `acceptBounds`.
  - This causes incorrect rounding in some float32 edge cases.
- **Ryu uses BigInt throughout**: Dart's lack of native u64 means all Ryu arithmetic uses `BigInt`, which is slower than native integer arithmetic in Go/Rust/Swift.
- **Gron unescape**: No surrogate pair support (uses `String.fromCharCode`).
- **`SpecCodec`**: Constructed with `const` — the closures must be top-level or static functions for const construction.
- **`SpecUndefined`**: Singleton via `const SpecUndefined._()` with `static const instance`.

---

## 14. DevContainer

- **Base image**: `dev:all`
- **Tooling**: Dart SDK via `mise` shims
- **Build**: `dart pub get` (with `--mount=type=cache,target=/root/.pub-cache`), then `dart analyze --no-fatal-warnings lib/`
- **Output** (`FROM scratch`): copies `/app/lib/` to `/out/`
