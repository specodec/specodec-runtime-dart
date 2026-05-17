import 'dart:typed_data';
import 'ryu_math.dart';
import 'tables_f64.dart';

const int DOUBLE_MANTISSA_BITS = 52;
const int DOUBLE_BIAS = 1023;
const int DOUBLE_POW5_INV_BITCOUNT = 125;
const int DOUBLE_POW5_BITCOUNT = 125;

String float64ToString(double d) {
  ByteData bd = ByteData(8);
  bd.setFloat64(0, d, Endian.big);
  int bitsInt = bd.getUint64(0, Endian.big);
  BigInt bits = BigInt.from(bitsInt);
  
  bool sign = (bits >> 63) != BigInt.zero;
  BigInt ieeeMantissa = bits & BigInt.from(0xFFFFFFFFFFFFF);
  int ieeeExponent = ((bits >> 52) & BigInt.from(0x7FF)).toInt();
  
  if (ieeeExponent == 2047) {
    if (ieeeMantissa == BigInt.zero) return sign ? "-Infinity" : "Infinity";
    return "NaN";
  }
  if (ieeeExponent == 0 && ieeeMantissa == BigInt.zero) {
    return sign ? "-0E0" : "0E0";
  }
  
  int e2 = ieeeExponent == 0 
    ? 1 - DOUBLE_BIAS - DOUBLE_MANTISSA_BITS - 2
    : ieeeExponent - DOUBLE_BIAS - DOUBLE_MANTISSA_BITS - 2;
  
  BigInt m2 = ieeeExponent == 0 ? ieeeMantissa : (BigInt.one << DOUBLE_MANTISSA_BITS) | ieeeMantissa;
  bool even = (m2 & BigInt.one) == BigInt.zero;
  bool acceptBounds = even;
  
  BigInt mv = m2 * BigInt.from(4);
  BigInt mp = mv + BigInt.from(2);
  int mmShift = (ieeeMantissa != BigInt.zero || ieeeExponent <= 1) ? 1 : 0;
  BigInt mm = mv - BigInt.one - BigInt.from(mmShift);
  
  bool vrIsTrailingZeros = false;
  bool vmIsTrailingZeros = false;
  BigInt lastDigit = BigInt.zero;
  int e10;
  BigInt vr, vp, vm_;
  
  if (e2 >= 0) {
    int q = log10Pow2(e2);
    e10 = q;
    int k = DOUBLE_POW5_INV_BITCOUNT + pow5Bits(q) - 1;
    int i = -e2 + q + k;
    
    vr = mulShift64(mv, DOUBLE_POW5_INV_SPLIT[q], i);
    vp = mulShift64(mp, DOUBLE_POW5_INV_SPLIT[q], i);
    vm_ = mulShift64(mm, DOUBLE_POW5_INV_SPLIT[q], i);
    
    if (q != 0 && (vp - BigInt.one) ~/ BigInt.from(10) <= vm_ ~/ BigInt.from(10)) {
      int l = DOUBLE_POW5_INV_BITCOUNT + pow5Bits(q - 1) - 1;
      lastDigit = mulShift64(mv, DOUBLE_POW5_INV_SPLIT[q - 1], -e2 + q - 1 + l) % BigInt.from(10);
    }
    
    if (q <= 21) {
      if (mv % BigInt.from(5) == BigInt.zero) {
        vrIsTrailingZeros = multipleOfPowerOf5_64(mv, q);
      } else if (acceptBounds) {
        vmIsTrailingZeros = multipleOfPowerOf5_64(mm, q);
      } else {
        if (multipleOfPowerOf5_64(mp, q)) vp = vp - BigInt.one;
      }
    }
  } else {
    int q = log10Pow5(-e2);
    e10 = q + e2;
    int i = -e2 - q;
    int k = pow5Bits(i) - DOUBLE_POW5_BITCOUNT;
    int j = q - k;
    
    vr = mulShift64(mv, DOUBLE_POW5_SPLIT[i], j);
    vp = mulShift64(mp, DOUBLE_POW5_SPLIT[i], j);
    vm_ = mulShift64(mm, DOUBLE_POW5_SPLIT[i], j);
    
    if (q != 0 && (vp - BigInt.one) ~/ BigInt.from(10) <= vm_ ~/ BigInt.from(10)) {
      int j2 = q - 1 - (pow5Bits(i + 1) - DOUBLE_POW5_BITCOUNT);
      lastDigit = mulShift64(mv, DOUBLE_POW5_SPLIT[i + 1], j2) % BigInt.from(10);
    }
    
    if (q <= 1) {
      vrIsTrailingZeros = true;
      if (acceptBounds) {
        vmIsTrailingZeros = mmShift == 1;
      } else {
        vp = vp - BigInt.one;
      }
    } else if (q < 63) {
      vrIsTrailingZeros = multipleOfPowerOf2_64(mv, q - 1);
      if (acceptBounds) {
        vmIsTrailingZeros = multipleOfPowerOf5_64(mm, q);
      } else {
        if (multipleOfPowerOf5_64(mp, q)) vp = vp - BigInt.one;
      }
    }
  }
  
  int removed = 0;
  BigInt vr2 = vr, vp2 = vp, vm2 = vm_;
  
  if (vmIsTrailingZeros || vrIsTrailingZeros) {
    while (vp2 ~/ BigInt.from(10) > vm2 ~/ BigInt.from(10)) {
      vmIsTrailingZeros = vmIsTrailingZeros && (vm2 % BigInt.from(10) == BigInt.zero);
      vrIsTrailingZeros = vrIsTrailingZeros && (lastDigit == BigInt.zero);
      lastDigit = vr2 % BigInt.from(10);
      vr2 = vr2 ~/ BigInt.from(10);
      vp2 = vp2 ~/ BigInt.from(10);
      vm2 = vm2 ~/ BigInt.from(10);
      removed++;
    }
    
    if (vmIsTrailingZeros) {
      while (vm2 % BigInt.from(10) == BigInt.zero) {
        vrIsTrailingZeros = vrIsTrailingZeros && (lastDigit == BigInt.zero);
        lastDigit = vr2 % BigInt.from(10);
        vr2 = vr2 ~/ BigInt.from(10);
        vp2 = vp2 ~/ BigInt.from(10);
        vm2 = vm2 ~/ BigInt.from(10);
        removed++;
      }
    }
    
    if (vrIsTrailingZeros && lastDigit == BigInt.from(5) && (vr2 & BigInt.one) == BigInt.zero) {
      lastDigit = BigInt.from(4);
    }
    
    bool roundUp = (vr2 == vm2 && (!acceptBounds || !vmIsTrailingZeros)) || lastDigit >= BigInt.from(5);
    BigInt output = roundUp ? vr2 + BigInt.one : vr2;
    int exp = e10 + removed;
    int olength = decimalLength17(output);
    
    String result = sign ? "-" : "";
    String digits = output.toString();
    if (olength == 1) {
      result += digits;
    } else {
      result += digits[0] + "." + digits.substring(1);
    }
    result += "E" + (exp + olength - 1).toString();
    return result;
  } else {
    while (vp2 ~/ BigInt.from(10) > vm2 ~/ BigInt.from(10)) {
      lastDigit = vr2 % BigInt.from(10);
      vr2 = vr2 ~/ BigInt.from(10);
      vp2 = vp2 ~/ BigInt.from(10);
      vm2 = vm2 ~/ BigInt.from(10);
      removed++;
    }
    
    BigInt output = (vr2 == vm2 || lastDigit >= BigInt.from(5)) ? vr2 + BigInt.one : vr2;
    int exp = e10 + removed;
    int olength = decimalLength17(output);
    
    String result = sign ? "-" : "";
    String digits = output.toString();
    if (olength == 1) {
      result += digits;
    } else {
      result += digits[0] + "." + digits.substring(1);
    }
    result += "E" + (exp + olength - 1).toString();
    return result;
  }
}
