import 'dart:typed_data';
import 'ryu_math.dart';
import 'tables_f32.dart';
import 'tables_f32.dart';

const int FLOAT_MANTISSA_BITS = 23;
const int FLOAT_BIAS = 127;
const int FLOAT_POW5_INV_BITCOUNT = 59;
const int FLOAT_POW5_BITCOUNT = 61;

String float32ToString(double f) {
  ByteData bd = ByteData(4);
  bd.setFloat32(0, f, Endian.big);
  int bits = bd.getUint32(0, Endian.big);
  
  bool sign = (bits >> 31) != 0;
  int ieeeMantissa = bits & 0x7FFFFF;
  int ieeeExponent = (bits >> 23) & 0xFF;
  
  if (ieeeExponent == 255) {
    if (ieeeMantissa == 0) return sign ? "-Infinity" : "Infinity";
    return "NaN";
  }
  if (ieeeExponent == 0 && ieeeMantissa == 0) {
    return sign ? "-0E0" : "0E0";
  }
  
  int e2 = ieeeExponent == 0 
    ? 1 - FLOAT_BIAS - FLOAT_MANTISSA_BITS - 2
    : ieeeExponent - FLOAT_BIAS - FLOAT_MANTISSA_BITS - 2;
  
  BigInt m2 = BigInt.from(ieeeExponent == 0 ? ieeeMantissa : (1 << FLOAT_MANTISSA_BITS) | ieeeMantissa);
  bool even = (m2 & BigInt.one) == BigInt.zero;
  bool acceptBounds = even;
  
  BigInt mv = m2 * BigInt.from(4);
  BigInt mp = mv + BigInt.from(2);
  int mmShift = (ieeeMantissa != 0 || ieeeExponent <= 1) ? 1 : 0;
  BigInt mm = mv - BigInt.one - BigInt.from(mmShift);
  
  bool vrIsTrailingZeros = false;
  bool vmIsTrailingZeros = false;
  BigInt lastDigit = BigInt.zero;
  int e10;
  BigInt vr, vp, vm_;
  
  if (e2 >= 0) {
    int q = log10Pow2(e2);
    e10 = q;
    int k = FLOAT_POW5_INV_BITCOUNT + pow5bits(q) - 1;
    int i = -e2 + q + k;
    
    vr = mulShift32(mv, FLOAT_POW5_INV_SPLIT[q] + BigInt.one, i);
    vp = mulShift32(mp, FLOAT_POW5_INV_SPLIT[q] + BigInt.one, i);
    vm_ = mulShift32(mm, FLOAT_POW5_INV_SPLIT[q] + BigInt.one, i);
    
    if (q != 0 && (vp - BigInt.one) ~/ BigInt.from(10) <= vm_ ~/ BigInt.from(10)) {
      int l = FLOAT_POW5_INV_BITCOUNT + pow5bits(q - 1) - 1;
      lastDigit = mulShift32(mv, FLOAT_POW5_INV_SPLIT[q - 1] + BigInt.one, -e2 + q - 1 + l) % BigInt.from(10);
    }
    
    if (q <= 9) {
      if (mv % BigInt.from(5) == BigInt.zero) {
vrIsTrailingZeros = multipleOfPowerOf5_32(mv, q);
      } else if (acceptBounds) {
        vmIsTrailingZeros = multipleOfPowerOf5_32(mm, q);
      } else {
        if (multipleOfPowerOf5_32(mp, q)) vp = vp - BigInt.one;
      }
    }
  } else {
    int q = log10Pow5(-e2);
    e10 = q + e2;
    int i = -e2 - q;
    int k = pow5bits(i) - FLOAT_POW5_BITCOUNT;
    int j = q - k;
    
    vr = mulShift32(mv, FLOAT_POW5_SPLIT[i], j);
    vp = mulShift32(mp, FLOAT_POW5_SPLIT[i], j);
    vm_ = mulShift32(mm, FLOAT_POW5_SPLIT[i], j);
    
    if (q != 0 && (vp - BigInt.one) ~/ BigInt.from(10) <= vm_ ~/ BigInt.from(10)) {
      int j2 = q - 1 - (pow5bits(i + 1) - FLOAT_POW5_BITCOUNT);
      lastDigit = mulShift32(mv, FLOAT_POW5_SPLIT[i + 1], j2) % BigInt.from(10);
    }
    
    if (q <= 1) {
      vrIsTrailingZeros = true;
      if (acceptBounds) {
        vmIsTrailingZeros = mmShift == 1;
      } else {
        vp = vp - BigInt.one;
      }
    } else if (q < 31) {
      vrIsTrailingZeros = multipleOfPowerOf2_32(mv, q - 1);
      if (acceptBounds) {
        vmIsTrailingZeros = multipleOfPowerOf5_32(mm, q);
      } else {
        if (multipleOfPowerOf5_32(mp, q)) {
          vp = vp - BigInt.one;
        }
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
    int olength = decimalLength9(output);
    
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
    int olength = decimalLength9(output);
    
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
