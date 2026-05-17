int pow5Bits(int e) {
  return (e * 1217359) ~/ 524288 + 1;
}

int log10Pow2(int e) {
  return (e * 78913) ~/ 262144;
}

int log10Pow5(int e) {
  return (e * 732923) ~/ 1048576;
}

int decimalLength9(BigInt v) {
  if (v >= BigInt.from(100000000)) return 9;
  if (v >= BigInt.from(10000000)) return 8;
  if (v >= BigInt.from(1000000)) return 7;
  if (v >= BigInt.from(100000)) return 6;
  if (v >= BigInt.from(10000)) return 5;
  if (v >= BigInt.from(1000)) return 4;
  if (v >= BigInt.from(100)) return 3;
  if (v >= BigInt.from(10)) return 2;
  return 1;
}

int decimalLength17(BigInt v) {
  if (v >= BigInt.from(10000000000000000)) return 17;
  if (v >= BigInt.from(1000000000000000)) return 16;
  if (v >= BigInt.from(100000000000000)) return 15;
  if (v >= BigInt.from(10000000000000)) return 14;
  if (v >= BigInt.from(1000000000000)) return 13;
  if (v >= BigInt.from(100000000000)) return 12;
  if (v >= BigInt.from(10000000000)) return 11;
  if (v >= BigInt.from(1000000000)) return 10;
  if (v >= BigInt.from(100000000)) return 9;
  if (v >= BigInt.from(10000000)) return 8;
  if (v >= BigInt.from(1000000)) return 7;
  if (v >= BigInt.from(100000)) return 6;
  if (v >= BigInt.from(10000)) return 5;
  if (v >= BigInt.from(1000)) return 4;
  if (v >= BigInt.from(100)) return 3;
  if (v >= BigInt.from(10)) return 2;
  return 1;
}

BigInt mulShift32(BigInt m, BigInt factor, int shift) {
  BigInt factorLo = factor & BigInt.from(0xFFFFFFFF);
  BigInt factorHi = (factor >> 32) & BigInt.from(0xFFFFFFFF);
  
  BigInt bits0 = m * factorLo;
  BigInt bits1 = m * factorHi;
  
  BigInt sum = (bits0 >> 32) + bits1;
  return (sum >> (shift - 32)) & BigInt.from(0xFFFFFFFF);
}

BigInt mulShift64(BigInt m, List<BigInt> mul, int shift) {
  BigInt b0 = m * mul[0];
  BigInt b2 = m * mul[1];
  BigInt b0Hi = b0 >> 64;
  BigInt sumVal = b0Hi + b2;
  return (sumVal >> (shift - 64)) & BigInt.from(0xFFFFFFFFFFFFFFFF);
}

bool multipleOfPowerOf5_64(BigInt value, int q) {
  if (q == 0) return true;
  if (q >= 64) return value == BigInt.zero;
  BigInt pow5 = BigInt.from(5).pow(q);
  return (value % pow5) == BigInt.zero;
}

bool multipleOfPowerOf2_64(BigInt value, int q) {
  if (q == 0) return true;
  if (q >= 64) return value == BigInt.zero;
  return (value & ((BigInt.one << q) - BigInt.one)) == BigInt.zero;
}

bool multipleOfPowerOf5_32(BigInt value, int q) {
  if (q == 0) return true;
  if (q >= 32) return value == BigInt.zero;
  BigInt pow5 = BigInt.from(5);
  for (int i = 1; i < q; i++) {
    pow5 *= BigInt.from(5);
  }
  return (value % pow5) == BigInt.zero;
}

bool multipleOfPowerOf2_32(BigInt value, int q) {
  if (q == 0) return true;
  if (q >= 32) return value == BigInt.zero;
  return (value & ((BigInt.one << q) - BigInt.one)) == BigInt.zero;
}
