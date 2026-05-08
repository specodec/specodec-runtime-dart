library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class ArrString {
  final List<String> items;
  ArrString({required this.items});
}

void writeArrString(SpecWriter w, ArrString obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeString(item); } w.endArray();
  w.endObject();
}

final SpecCodec<ArrString> ArrStringCodec = SpecCodec<ArrString>(
  encode: (w, obj) => writeArrString(w, obj),
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
    return ArrString(items: itemsVal);
  },
);

class ArrInt32 {
  final List<int> items;
  ArrInt32({required this.items});
}

void writeArrInt32(SpecWriter w, ArrInt32 obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeInt32(item); } w.endArray();
  w.endObject();
}

final SpecCodec<ArrInt32> ArrInt32Codec = SpecCodec<ArrInt32>(
  encode: (w, obj) => writeArrInt32(w, obj),
  decode: (r) {
    List<int> itemsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <int>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt32()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ArrInt32(items: itemsVal);
  },
);

class ArrBoolean {
  final List<bool> items;
  ArrBoolean({required this.items});
}

void writeArrBoolean(SpecWriter w, ArrBoolean obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeBool(item); } w.endArray();
  w.endObject();
}

final SpecCodec<ArrBoolean> ArrBooleanCodec = SpecCodec<ArrBoolean>(
  encode: (w, obj) => writeArrBoolean(w, obj),
  decode: (r) {
    List<bool> itemsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <bool>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readBool()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ArrBoolean(items: itemsVal);
  },
);

class ArrFloat64 {
  final List<double> items;
  ArrFloat64({required this.items});
}

void writeArrFloat64(SpecWriter w, ArrFloat64 obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeFloat64(item); } w.endArray();
  w.endObject();
}

final SpecCodec<ArrFloat64> ArrFloat64Codec = SpecCodec<ArrFloat64>(
  encode: (w, obj) => writeArrFloat64(w, obj),
  decode: (r) {
    List<double> itemsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <double>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readFloat64()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ArrFloat64(items: itemsVal);
  },
);

class ArrBytes {
  final List<Uint8List> items;
  ArrBytes({required this.items});
}

void writeArrBytes(SpecWriter w, ArrBytes obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeBytes(item); } w.endArray();
  w.endObject();
}

final SpecCodec<ArrBytes> ArrBytesCodec = SpecCodec<ArrBytes>(
  encode: (w, obj) => writeArrBytes(w, obj),
  decode: (r) {
    List<Uint8List> itemsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <Uint8List>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readBytes()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ArrBytes(items: itemsVal);
  },
);

class ArrInt64 {
  final List<BigInt> items;
  ArrInt64({required this.items});
}

void writeArrInt64(SpecWriter w, ArrInt64 obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeInt64(item); } w.endArray();
  w.endObject();
}

final SpecCodec<ArrInt64> ArrInt64Codec = SpecCodec<ArrInt64>(
  encode: (w, obj) => writeArrInt64(w, obj),
  decode: (r) {
    List<BigInt> itemsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <BigInt>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt64()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ArrInt64(items: itemsVal);
  },
);

class ArrUint64 {
  final List<BigInt> items;
  ArrUint64({required this.items});
}

void writeArrUint64(SpecWriter w, ArrUint64 obj) {
  w.beginObject(1);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeUint64(item); } w.endArray();
  w.endObject();
}

final SpecCodec<ArrUint64> ArrUint64Codec = SpecCodec<ArrUint64>(
  encode: (w, obj) => writeArrUint64(w, obj),
  decode: (r) {
    List<BigInt> itemsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <BigInt>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readUint64()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ArrUint64(items: itemsVal);
  },
);

class MultiArr1 {
  final List<String> names;
  final List<int> scores;
  MultiArr1({required this.names, required this.scores});
}

void writeMultiArr1(SpecWriter w, MultiArr1 obj) {
  w.beginObject(2);
  w.writeField('names'); w.beginArray(obj.names.length); for (final item in obj.names) { w.nextElement(); w.writeString(item); } w.endArray();
  w.writeField('scores'); w.beginArray(obj.scores.length); for (final item in obj.scores) { w.nextElement(); w.writeInt32(item); } w.endArray();
  w.endObject();
}

final SpecCodec<MultiArr1> MultiArr1Codec = SpecCodec<MultiArr1>(
  encode: (w, obj) => writeMultiArr1(w, obj),
  decode: (r) {
    List<String> namesVal = [];
    List<int> scoresVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'names': namesVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        case 'scores': scoresVal = () { final list = <int>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt32()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return MultiArr1(names: namesVal, scores: scoresVal);
  },
);

class MultiArr2 {
  final List<bool> flags;
  final List<double> values;
  final List<Uint8List> payload;
  MultiArr2({required this.flags, required this.values, required this.payload});
}

void writeMultiArr2(SpecWriter w, MultiArr2 obj) {
  w.beginObject(3);
  w.writeField('flags'); w.beginArray(obj.flags.length); for (final item in obj.flags) { w.nextElement(); w.writeBool(item); } w.endArray();
  w.writeField('values'); w.beginArray(obj.values.length); for (final item in obj.values) { w.nextElement(); w.writeFloat64(item); } w.endArray();
  w.writeField('payload'); w.beginArray(obj.payload.length); for (final item in obj.payload) { w.nextElement(); w.writeBytes(item); } w.endArray();
  w.endObject();
}

final SpecCodec<MultiArr2> MultiArr2Codec = SpecCodec<MultiArr2>(
  encode: (w, obj) => writeMultiArr2(w, obj),
  decode: (r) {
    List<bool> flagsVal = [];
    List<double> valuesVal = [];
    List<Uint8List> payloadVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'flags': flagsVal = () { final list = <bool>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readBool()); } r.endArray(); return list; }(); break;
        case 'values': valuesVal = () { final list = <double>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readFloat64()); } r.endArray(); return list; }(); break;
        case 'payload': payloadVal = () { final list = <Uint8List>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readBytes()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return MultiArr2(flags: flagsVal, values: valuesVal, payload: payloadVal);
  },
);

class MultiArr3 {
  final List<String> a;
  final List<int> b;
  final List<double> c;
  MultiArr3({required this.a, required this.b, required this.c});
}

void writeMultiArr3(SpecWriter w, MultiArr3 obj) {
  w.beginObject(3);
  w.writeField('a'); w.beginArray(obj.a.length); for (final item in obj.a) { w.nextElement(); w.writeString(item); } w.endArray();
  w.writeField('b'); w.beginArray(obj.b.length); for (final item in obj.b) { w.nextElement(); w.writeInt32(item); } w.endArray();
  w.writeField('c'); w.beginArray(obj.c.length); for (final item in obj.c) { w.nextElement(); w.writeFloat64(item); } w.endArray();
  w.endObject();
}

final SpecCodec<MultiArr3> MultiArr3Codec = SpecCodec<MultiArr3>(
  encode: (w, obj) => writeMultiArr3(w, obj),
  decode: (r) {
    List<String> aVal = [];
    List<int> bVal = [];
    List<double> cVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        case 'b': bVal = () { final list = <int>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt32()); } r.endArray(); return list; }(); break;
        case 'c': cVal = () { final list = <double>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readFloat64()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return MultiArr3(a: aVal, b: bVal, c: cVal);
  },
);

class MultiArr4 {
  final List<BigInt> ids;
  final List<String> tags;
  MultiArr4({required this.ids, required this.tags});
}

void writeMultiArr4(SpecWriter w, MultiArr4 obj) {
  w.beginObject(2);
  w.writeField('ids'); w.beginArray(obj.ids.length); for (final item in obj.ids) { w.nextElement(); w.writeInt64(item); } w.endArray();
  w.writeField('tags'); w.beginArray(obj.tags.length); for (final item in obj.tags) { w.nextElement(); w.writeString(item); } w.endArray();
  w.endObject();
}

final SpecCodec<MultiArr4> MultiArr4Codec = SpecCodec<MultiArr4>(
  encode: (w, obj) => writeMultiArr4(w, obj),
  decode: (r) {
    List<BigInt> idsVal = [];
    List<String> tagsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'ids': idsVal = () { final list = <BigInt>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt64()); } r.endArray(); return list; }(); break;
        case 'tags': tagsVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return MultiArr4(ids: idsVal, tags: tagsVal);
  },
);

class MultiArr5 {
  final List<BigInt> xs;
  final List<double> ys;
  final List<bool> zs;
  MultiArr5({required this.xs, required this.ys, required this.zs});
}

void writeMultiArr5(SpecWriter w, MultiArr5 obj) {
  w.beginObject(3);
  w.writeField('xs'); w.beginArray(obj.xs.length); for (final item in obj.xs) { w.nextElement(); w.writeUint64(item); } w.endArray();
  w.writeField('ys'); w.beginArray(obj.ys.length); for (final item in obj.ys) { w.nextElement(); w.writeFloat32(item); } w.endArray();
  w.writeField('zs'); w.beginArray(obj.zs.length); for (final item in obj.zs) { w.nextElement(); w.writeBool(item); } w.endArray();
  w.endObject();
}

final SpecCodec<MultiArr5> MultiArr5Codec = SpecCodec<MultiArr5>(
  encode: (w, obj) => writeMultiArr5(w, obj),
  decode: (r) {
    List<BigInt> xsVal = [];
    List<double> ysVal = [];
    List<bool> zsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'xs': xsVal = () { final list = <BigInt>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readUint64()); } r.endArray(); return list; }(); break;
        case 'ys': ysVal = () { final list = <double>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readFloat32()); } r.endArray(); return list; }(); break;
        case 'zs': zsVal = () { final list = <bool>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readBool()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return MultiArr5(xs: xsVal, ys: ysVal, zs: zsVal);
  },
);

class OptCombo1 {
  final String req;
  final int? optA;
  OptCombo1({required this.req, this.optA});
}

void writeOptCombo1(SpecWriter w, OptCombo1 obj) {
  var fieldCount = 1;
  if (obj.optA != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req'); w.writeString(obj.req);
  if (obj.optA != null) { w.writeField('opt_a'); w.writeInt32(obj.optA!); }
  w.endObject();
}

final SpecCodec<OptCombo1> OptCombo1Codec = SpecCodec<OptCombo1>(
  encode: (w, obj) => writeOptCombo1(w, obj),
  decode: (r) {
    String reqVal = '';
    int? optAVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req': reqVal = r.readString(); break;
        case 'opt_a': optAVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo1(req: reqVal, optA: optAVal);
  },
);

class OptCombo2 {
  final String req;
  final int? optA;
  final bool? optB;
  OptCombo2({required this.req, this.optA, this.optB});
}

void writeOptCombo2(SpecWriter w, OptCombo2 obj) {
  var fieldCount = 1;
  if (obj.optA != null) fieldCount++;
  if (obj.optB != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req'); w.writeString(obj.req);
  if (obj.optA != null) { w.writeField('opt_a'); w.writeInt32(obj.optA!); }
  if (obj.optB != null) { w.writeField('opt_b'); w.writeBool(obj.optB!); }
  w.endObject();
}

final SpecCodec<OptCombo2> OptCombo2Codec = SpecCodec<OptCombo2>(
  encode: (w, obj) => writeOptCombo2(w, obj),
  decode: (r) {
    String reqVal = '';
    int? optAVal;
    bool? optBVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req': reqVal = r.readString(); break;
        case 'opt_a': optAVal = r.readInt32(); break;
        case 'opt_b': optBVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo2(req: reqVal, optA: optAVal, optB: optBVal);
  },
);

class OptCombo3 {
  final String req;
  final int? optA;
  final bool? optB;
  final double? optC;
  OptCombo3({required this.req, this.optA, this.optB, this.optC});
}

void writeOptCombo3(SpecWriter w, OptCombo3 obj) {
  var fieldCount = 1;
  if (obj.optA != null) fieldCount++;
  if (obj.optB != null) fieldCount++;
  if (obj.optC != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req'); w.writeString(obj.req);
  if (obj.optA != null) { w.writeField('opt_a'); w.writeInt32(obj.optA!); }
  if (obj.optB != null) { w.writeField('opt_b'); w.writeBool(obj.optB!); }
  if (obj.optC != null) { w.writeField('opt_c'); w.writeFloat64(obj.optC!); }
  w.endObject();
}

final SpecCodec<OptCombo3> OptCombo3Codec = SpecCodec<OptCombo3>(
  encode: (w, obj) => writeOptCombo3(w, obj),
  decode: (r) {
    String reqVal = '';
    int? optAVal;
    bool? optBVal;
    double? optCVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req': reqVal = r.readString(); break;
        case 'opt_a': optAVal = r.readInt32(); break;
        case 'opt_b': optBVal = r.readBool(); break;
        case 'opt_c': optCVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo3(req: reqVal, optA: optAVal, optB: optBVal, optC: optCVal);
  },
);

class OptCombo4 {
  final int req;
  final String? optA;
  final Uint8List? optB;
  OptCombo4({required this.req, this.optA, this.optB});
}

void writeOptCombo4(SpecWriter w, OptCombo4 obj) {
  var fieldCount = 1;
  if (obj.optA != null) fieldCount++;
  if (obj.optB != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req'); w.writeInt32(obj.req);
  if (obj.optA != null) { w.writeField('opt_a'); w.writeString(obj.optA!); }
  if (obj.optB != null) { w.writeField('opt_b'); w.writeBytes(obj.optB!); }
  w.endObject();
}

final SpecCodec<OptCombo4> OptCombo4Codec = SpecCodec<OptCombo4>(
  encode: (w, obj) => writeOptCombo4(w, obj),
  decode: (r) {
    int reqVal = 0;
    String? optAVal;
    Uint8List? optBVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req': reqVal = r.readInt32(); break;
        case 'opt_a': optAVal = r.readString(); break;
        case 'opt_b': optBVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo4(req: reqVal, optA: optAVal, optB: optBVal);
  },
);

class OptCombo5 {
  final String req1;
  final int req2;
  final bool? optA;
  final double? optB;
  OptCombo5({required this.req1, required this.req2, this.optA, this.optB});
}

void writeOptCombo5(SpecWriter w, OptCombo5 obj) {
  var fieldCount = 2;
  if (obj.optA != null) fieldCount++;
  if (obj.optB != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req1'); w.writeString(obj.req1);
  w.writeField('req2'); w.writeInt32(obj.req2);
  if (obj.optA != null) { w.writeField('opt_a'); w.writeBool(obj.optA!); }
  if (obj.optB != null) { w.writeField('opt_b'); w.writeFloat64(obj.optB!); }
  w.endObject();
}

final SpecCodec<OptCombo5> OptCombo5Codec = SpecCodec<OptCombo5>(
  encode: (w, obj) => writeOptCombo5(w, obj),
  decode: (r) {
    String req1Val = '';
    int req2Val = 0;
    bool? optAVal;
    double? optBVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req1': req1Val = r.readString(); break;
        case 'req2': req2Val = r.readInt32(); break;
        case 'opt_a': optAVal = r.readBool(); break;
        case 'opt_b': optBVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo5(req1: req1Val, req2: req2Val, optA: optAVal, optB: optBVal);
  },
);

class OptCombo6 {
  final String req;
  final String? optS;
  final int? optI;
  final double? optF;
  final Uint8List? optB;
  OptCombo6({required this.req, this.optS, this.optI, this.optF, this.optB});
}

void writeOptCombo6(SpecWriter w, OptCombo6 obj) {
  var fieldCount = 1;
  if (obj.optS != null) fieldCount++;
  if (obj.optI != null) fieldCount++;
  if (obj.optF != null) fieldCount++;
  if (obj.optB != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req'); w.writeString(obj.req);
  if (obj.optS != null) { w.writeField('opt_s'); w.writeString(obj.optS!); }
  if (obj.optI != null) { w.writeField('opt_i'); w.writeInt32(obj.optI!); }
  if (obj.optF != null) { w.writeField('opt_f'); w.writeFloat64(obj.optF!); }
  if (obj.optB != null) { w.writeField('opt_b'); w.writeBytes(obj.optB!); }
  w.endObject();
}

final SpecCodec<OptCombo6> OptCombo6Codec = SpecCodec<OptCombo6>(
  encode: (w, obj) => writeOptCombo6(w, obj),
  decode: (r) {
    String reqVal = '';
    String? optSVal;
    int? optIVal;
    double? optFVal;
    Uint8List? optBVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req': reqVal = r.readString(); break;
        case 'opt_s': optSVal = r.readString(); break;
        case 'opt_i': optIVal = r.readInt32(); break;
        case 'opt_f': optFVal = r.readFloat64(); break;
        case 'opt_b': optBVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo6(req: reqVal, optS: optSVal, optI: optIVal, optF: optFVal, optB: optBVal);
  },
);

class OptCombo7 {
  final BigInt req;
  final BigInt? optU64;
  final String? optStr;
  OptCombo7({required this.req, this.optU64, this.optStr});
}

void writeOptCombo7(SpecWriter w, OptCombo7 obj) {
  var fieldCount = 1;
  if (obj.optU64 != null) fieldCount++;
  if (obj.optStr != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req'); w.writeInt64(obj.req);
  if (obj.optU64 != null) { w.writeField('opt_u64'); w.writeUint64(obj.optU64!); }
  if (obj.optStr != null) { w.writeField('opt_str'); w.writeString(obj.optStr!); }
  w.endObject();
}

final SpecCodec<OptCombo7> OptCombo7Codec = SpecCodec<OptCombo7>(
  encode: (w, obj) => writeOptCombo7(w, obj),
  decode: (r) {
    BigInt reqVal = BigInt.zero;
    BigInt? optU64Val;
    String? optStrVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req': reqVal = r.readInt64(); break;
        case 'opt_u64': optU64Val = r.readUint64(); break;
        case 'opt_str': optStrVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo7(req: reqVal, optU64: optU64Val, optStr: optStrVal);
  },
);

class OptCombo8 {
  final String a;
  final int? b;
  final double? c;
  final bool? d;
  final Uint8List? e;
  final BigInt? f;
  OptCombo8({required this.a, this.b, this.c, this.d, this.e, this.f});
}

void writeOptCombo8(SpecWriter w, OptCombo8 obj) {
  var fieldCount = 1;
  if (obj.b != null) fieldCount++;
  if (obj.c != null) fieldCount++;
  if (obj.d != null) fieldCount++;
  if (obj.e != null) fieldCount++;
  if (obj.f != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('a'); w.writeString(obj.a);
  if (obj.b != null) { w.writeField('b'); w.writeInt32(obj.b!); }
  if (obj.c != null) { w.writeField('c'); w.writeFloat64(obj.c!); }
  if (obj.d != null) { w.writeField('d'); w.writeBool(obj.d!); }
  if (obj.e != null) { w.writeField('e'); w.writeBytes(obj.e!); }
  if (obj.f != null) { w.writeField('f'); w.writeInt64(obj.f!); }
  w.endObject();
}

final SpecCodec<OptCombo8> OptCombo8Codec = SpecCodec<OptCombo8>(
  encode: (w, obj) => writeOptCombo8(w, obj),
  decode: (r) {
    String aVal = '';
    int? bVal;
    double? cVal;
    bool? dVal;
    Uint8List? eVal;
    BigInt? fVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readInt32(); break;
        case 'c': cVal = r.readFloat64(); break;
        case 'd': dVal = r.readBool(); break;
        case 'e': eVal = r.readBytes(); break;
        case 'f': fVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo8(a: aVal, b: bVal, c: cVal, d: dVal, e: eVal, f: fVal);
  },
);

class OptCombo9 {
  final String id;
  final String? name;
  final int? age;
  final double? score;
  OptCombo9({required this.id, this.name, this.age, this.score});
}

void writeOptCombo9(SpecWriter w, OptCombo9 obj) {
  var fieldCount = 1;
  if (obj.name != null) fieldCount++;
  if (obj.age != null) fieldCount++;
  if (obj.score != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('id'); w.writeString(obj.id);
  if (obj.name != null) { w.writeField('name'); w.writeString(obj.name!); }
  if (obj.age != null) { w.writeField('age'); w.writeInt32(obj.age!); }
  if (obj.score != null) { w.writeField('score'); w.writeFloat64(obj.score!); }
  w.endObject();
}

final SpecCodec<OptCombo9> OptCombo9Codec = SpecCodec<OptCombo9>(
  encode: (w, obj) => writeOptCombo9(w, obj),
  decode: (r) {
    String idVal = '';
    String? nameVal;
    int? ageVal;
    double? scoreVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'id': idVal = r.readString(); break;
        case 'name': nameVal = r.readString(); break;
        case 'age': ageVal = r.readInt32(); break;
        case 'score': scoreVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo9(id: idVal, name: nameVal, age: ageVal, score: scoreVal);
  },
);

class OptCombo10 {
  final int code;
  final String? msg;
  final String? detail;
  final bool? retry;
  OptCombo10({required this.code, this.msg, this.detail, this.retry});
}

void writeOptCombo10(SpecWriter w, OptCombo10 obj) {
  var fieldCount = 1;
  if (obj.msg != null) fieldCount++;
  if (obj.detail != null) fieldCount++;
  if (obj.retry != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('code'); w.writeInt32(obj.code);
  if (obj.msg != null) { w.writeField('msg'); w.writeString(obj.msg!); }
  if (obj.detail != null) { w.writeField('detail'); w.writeString(obj.detail!); }
  if (obj.retry != null) { w.writeField('retry'); w.writeBool(obj.retry!); }
  w.endObject();
}

final SpecCodec<OptCombo10> OptCombo10Codec = SpecCodec<OptCombo10>(
  encode: (w, obj) => writeOptCombo10(w, obj),
  decode: (r) {
    int codeVal = 0;
    String? msgVal;
    String? detailVal;
    bool? retryVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'code': codeVal = r.readInt32(); break;
        case 'msg': msgVal = r.readString(); break;
        case 'detail': detailVal = r.readString(); break;
        case 'retry': retryVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptCombo10(code: codeVal, msg: msgVal, detail: detailVal, retry: retryVal);
  },
);
