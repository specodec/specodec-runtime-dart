library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class EdgeEmpty {
  EdgeEmpty();
}

void writeEdgeEmpty(SpecWriter w, EdgeEmpty obj) {
  w.beginObject(0);
  w.endObject();
}

final SpecCodec<EdgeEmpty> EdgeEmptyCodec = SpecCodec<EdgeEmpty>(
  encode: (w, obj) => writeEdgeEmpty(w, obj),
  decode: (r) {
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeEmpty();
  },
);

class EdgeOneOpt {
  final String? maybe;
  EdgeOneOpt({this.maybe});
}

void writeEdgeOneOpt(SpecWriter w, EdgeOneOpt obj) {
  var fieldCount = 0;
  if (obj.maybe != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.maybe != null) { w.writeField('maybe'); w.writeString(obj.maybe!); }
  w.endObject();
}

final SpecCodec<EdgeOneOpt> EdgeOneOptCodec = SpecCodec<EdgeOneOpt>(
  encode: (w, obj) => writeEdgeOneOpt(w, obj),
  decode: (r) {
    String? maybeVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'maybe': maybeVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeOneOpt(maybe: maybeVal);
  },
);

class EdgeBigNums {
  final int i8;
  final int i16;
  final int i32;
  final BigInt i64;
  final int u8;
  final int u16;
  final int u32;
  final BigInt u64;
  EdgeBigNums({required this.i8, required this.i16, required this.i32, required this.i64, required this.u8, required this.u16, required this.u32, required this.u64});
}

void writeEdgeBigNums(SpecWriter w, EdgeBigNums obj) {
  w.beginObject(8);
  w.writeField('i8'); w.writeInt32(obj.i8);
  w.writeField('i16'); w.writeInt32(obj.i16);
  w.writeField('i32'); w.writeInt32(obj.i32);
  w.writeField('i64'); w.writeInt64(obj.i64);
  w.writeField('u8'); w.writeUint32(obj.u8);
  w.writeField('u16'); w.writeUint32(obj.u16);
  w.writeField('u32'); w.writeUint32(obj.u32);
  w.writeField('u64'); w.writeUint64(obj.u64);
  w.endObject();
}

final SpecCodec<EdgeBigNums> EdgeBigNumsCodec = SpecCodec<EdgeBigNums>(
  encode: (w, obj) => writeEdgeBigNums(w, obj),
  decode: (r) {
    int i8Val = 0;
    int i16Val = 0;
    int i32Val = 0;
    BigInt i64Val = BigInt.zero;
    int u8Val = 0;
    int u16Val = 0;
    int u32Val = 0;
    BigInt u64Val = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'i8': i8Val = r.readInt32(); break;
        case 'i16': i16Val = r.readInt32(); break;
        case 'i32': i32Val = r.readInt32(); break;
        case 'i64': i64Val = r.readInt64(); break;
        case 'u8': u8Val = r.readUint32(); break;
        case 'u16': u16Val = r.readUint32(); break;
        case 'u32': u32Val = r.readUint32(); break;
        case 'u64': u64Val = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeBigNums(i8: i8Val, i16: i16Val, i32: i32Val, i64: i64Val, u8: u8Val, u16: u16Val, u32: u32Val, u64: u64Val);
  },
);

class EdgeZeroVals {
  final String s;
  final int i;
  final double f;
  final bool b;
  final Uint8List byField;
  EdgeZeroVals({required this.s, required this.i, required this.f, required this.b, required this.byField});
}

void writeEdgeZeroVals(SpecWriter w, EdgeZeroVals obj) {
  w.beginObject(5);
  w.writeField('s'); w.writeString(obj.s);
  w.writeField('i'); w.writeInt32(obj.i);
  w.writeField('f'); w.writeFloat64(obj.f);
  w.writeField('b'); w.writeBool(obj.b);
  w.writeField('by_field'); w.writeBytes(obj.byField);
  w.endObject();
}

final SpecCodec<EdgeZeroVals> EdgeZeroValsCodec = SpecCodec<EdgeZeroVals>(
  encode: (w, obj) => writeEdgeZeroVals(w, obj),
  decode: (r) {
    String sVal = '';
    int iVal = 0;
    double fVal = 0.0;
    bool bVal = false;
    Uint8List byFieldVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 's': sVal = r.readString(); break;
        case 'i': iVal = r.readInt32(); break;
        case 'f': fVal = r.readFloat64(); break;
        case 'b': bVal = r.readBool(); break;
        case 'by_field': byFieldVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeZeroVals(s: sVal, i: iVal, f: fVal, b: bVal, byField: byFieldVal);
  },
);

class EdgeNullable {
  final String? a;
  final int? b;
  final Inner? c;
  final List<String>? d;
  EdgeNullable({this.a, this.b, this.c, this.d});
}

void writeEdgeNullable(SpecWriter w, EdgeNullable obj) {
  var fieldCount = 0;
  if (obj.a != null) fieldCount++;
  if (obj.b != null) fieldCount++;
  if (obj.c != null) fieldCount++;
  if (obj.d != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.a != null) { w.writeField('a'); w.writeString(obj.a!); }
  if (obj.b != null) { w.writeField('b'); w.writeInt32(obj.b!); }
  if (obj.c != null) { w.writeField('c'); InnerCodec.encode(w, obj.c!); }
  if (obj.d != null) { w.writeField('d'); w.beginArray(obj.d!.length); for (final item in obj.d!) { w.nextElement(); w.writeString(item); } w.endArray(); }
  w.endObject();
}

final SpecCodec<EdgeNullable> EdgeNullableCodec = SpecCodec<EdgeNullable>(
  encode: (w, obj) => writeEdgeNullable(w, obj),
  decode: (r) {
    String? aVal;
    int? bVal;
    Inner? cVal;
    List<String>? dVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readInt32(); break;
        case 'c': cVal = r.isNull() ? (() { r.readNull(); return null; })() : InnerCodec.decode(r); break;
        case 'd': dVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeNullable(a: aVal, b: bVal, c: cVal, d: dVal);
  },
);

class EdgeNegZero {
  final double v;
  EdgeNegZero({required this.v});
}

void writeEdgeNegZero(SpecWriter w, EdgeNegZero obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeFloat64(obj.v);
  w.endObject();
}

final SpecCodec<EdgeNegZero> EdgeNegZeroCodec = SpecCodec<EdgeNegZero>(
  encode: (w, obj) => writeEdgeNegZero(w, obj),
  decode: (r) {
    double vVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeNegZero(v: vVal);
  },
);

class EdgeNullByte {
  final String s;
  final Uint8List b;
  EdgeNullByte({required this.s, required this.b});
}

void writeEdgeNullByte(SpecWriter w, EdgeNullByte obj) {
  w.beginObject(2);
  w.writeField('s'); w.writeString(obj.s);
  w.writeField('b'); w.writeBytes(obj.b);
  w.endObject();
}

final SpecCodec<EdgeNullByte> EdgeNullByteCodec = SpecCodec<EdgeNullByte>(
  encode: (w, obj) => writeEdgeNullByte(w, obj),
  decode: (r) {
    String sVal = '';
    Uint8List bVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 's': sVal = r.readString(); break;
        case 'b': bVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeNullByte(s: sVal, b: bVal);
  },
);

class EdgeBoundary {
  final int i32Neg129;
  final int i32128;
  final int i32256;
  final int i3265536;
  final int i32Neg32769;
  final int u3265536;
  EdgeBoundary({required this.i32Neg129, required this.i32128, required this.i32256, required this.i3265536, required this.i32Neg32769, required this.u3265536});
}

void writeEdgeBoundary(SpecWriter w, EdgeBoundary obj) {
  w.beginObject(6);
  w.writeField('i32_neg129'); w.writeInt32(obj.i32Neg129);
  w.writeField('i32_128'); w.writeInt32(obj.i32128);
  w.writeField('i32_256'); w.writeInt32(obj.i32256);
  w.writeField('i32_65536'); w.writeInt32(obj.i3265536);
  w.writeField('i32_neg32769'); w.writeInt32(obj.i32Neg32769);
  w.writeField('u32_65536'); w.writeUint32(obj.u3265536);
  w.endObject();
}

final SpecCodec<EdgeBoundary> EdgeBoundaryCodec = SpecCodec<EdgeBoundary>(
  encode: (w, obj) => writeEdgeBoundary(w, obj),
  decode: (r) {
    int i32Neg129Val = 0;
    int i32128Val = 0;
    int i32256Val = 0;
    int i3265536Val = 0;
    int i32Neg32769Val = 0;
    int u3265536Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'i32_neg129': i32Neg129Val = r.readInt32(); break;
        case 'i32_128': i32128Val = r.readInt32(); break;
        case 'i32_256': i32256Val = r.readInt32(); break;
        case 'i32_65536': i3265536Val = r.readInt32(); break;
        case 'i32_neg32769': i32Neg32769Val = r.readInt32(); break;
        case 'u32_65536': u3265536Val = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeBoundary(i32Neg129: i32Neg129Val, i32128: i32128Val, i32256: i32256Val, i3265536: i3265536Val, i32Neg32769: i32Neg32769Val, u3265536: u3265536Val);
  },
);

class EdgeStrLen {
  final String s31;
  final String s32;
  final String s255;
  final String s256;
  EdgeStrLen({required this.s31, required this.s32, required this.s255, required this.s256});
}

void writeEdgeStrLen(SpecWriter w, EdgeStrLen obj) {
  w.beginObject(4);
  w.writeField('s31'); w.writeString(obj.s31);
  w.writeField('s32'); w.writeString(obj.s32);
  w.writeField('s255'); w.writeString(obj.s255);
  w.writeField('s256'); w.writeString(obj.s256);
  w.endObject();
}

final SpecCodec<EdgeStrLen> EdgeStrLenCodec = SpecCodec<EdgeStrLen>(
  encode: (w, obj) => writeEdgeStrLen(w, obj),
  decode: (r) {
    String s31Val = '';
    String s32Val = '';
    String s255Val = '';
    String s256Val = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 's31': s31Val = r.readString(); break;
        case 's32': s32Val = r.readString(); break;
        case 's255': s255Val = r.readString(); break;
        case 's256': s256Val = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeStrLen(s31: s31Val, s32: s32Val, s255: s255Val, s256: s256Val);
  },
);

class EdgeBytesLen {
  final Uint8List b31;
  final Uint8List b32;
  final Uint8List b255;
  final Uint8List b256;
  EdgeBytesLen({required this.b31, required this.b32, required this.b255, required this.b256});
}

void writeEdgeBytesLen(SpecWriter w, EdgeBytesLen obj) {
  w.beginObject(4);
  w.writeField('b31'); w.writeBytes(obj.b31);
  w.writeField('b32'); w.writeBytes(obj.b32);
  w.writeField('b255'); w.writeBytes(obj.b255);
  w.writeField('b256'); w.writeBytes(obj.b256);
  w.endObject();
}

final SpecCodec<EdgeBytesLen> EdgeBytesLenCodec = SpecCodec<EdgeBytesLen>(
  encode: (w, obj) => writeEdgeBytesLen(w, obj),
  decode: (r) {
    Uint8List b31Val = Uint8List(0);
    Uint8List b32Val = Uint8List(0);
    Uint8List b255Val = Uint8List(0);
    Uint8List b256Val = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'b31': b31Val = r.readBytes(); break;
        case 'b32': b32Val = r.readBytes(); break;
        case 'b255': b255Val = r.readBytes(); break;
        case 'b256': b256Val = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeBytesLen(b31: b31Val, b32: b32Val, b255: b255Val, b256: b256Val);
  },
);

class EdgeArrEmpty {
  final List<String> items;
  EdgeArrEmpty({required this.items});
}

void writeEdgeArrEmpty(SpecWriter w, EdgeArrEmpty obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeString(item); } w.endArray();
  w.endObject();
}

final SpecCodec<EdgeArrEmpty> EdgeArrEmptyCodec = SpecCodec<EdgeArrEmpty>(
  encode: (w, obj) => writeEdgeArrEmpty(w, obj),
  decode: (r) {
    List<String> itemsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeArrEmpty(items: itemsVal);
  },
);

class EdgeArrBoundary {
  final List<int> a15;
  final List<int> a16;
  EdgeArrBoundary({required this.a15, required this.a16});
}

void writeEdgeArrBoundary(SpecWriter w, EdgeArrBoundary obj) {
  w.beginObject(2);
  w.writeField('a15'); w.beginArray(obj.a15.length); for (final item in obj.a15) { w.nextElement(); w.writeInt32(item); } w.endArray();
  w.writeField('a16'); w.beginArray(obj.a16.length); for (final item in obj.a16) { w.nextElement(); w.writeInt32(item); } w.endArray();
  w.endObject();
}

final SpecCodec<EdgeArrBoundary> EdgeArrBoundaryCodec = SpecCodec<EdgeArrBoundary>(
  encode: (w, obj) => writeEdgeArrBoundary(w, obj),
  decode: (r) {
    List<int> a15Val = [];
    List<int> a16Val = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a15': a15Val = () { final list = <int>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt32()); } r.endArray(); return list; }(); break;
        case 'a16': a16Val = () { final list = <int>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt32()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EdgeArrBoundary(a15: a15Val, a16: a16Val);
  },
);
