library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class PairString {
  final String a;
  final String b;
  PairString({required this.a, required this.b});
}

void writePairString(SpecWriter w, PairString obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeString(obj.b);
  w.endObject();
}

final SpecCodec<PairString> PairStringCodec = SpecCodec<PairString>(
  encode: (w, obj) => writePairString(w, obj),
  decode: (r) {
    String aVal = '';
    String bVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairString(a: aVal, b: bVal);
  },
);

class PairBoolean {
  final bool a;
  final bool b;
  PairBoolean({required this.a, required this.b});
}

void writePairBoolean(SpecWriter w, PairBoolean obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeBool(obj.a);
  w.writeField('b'); w.writeBool(obj.b);
  w.endObject();
}

final SpecCodec<PairBoolean> PairBooleanCodec = SpecCodec<PairBoolean>(
  encode: (w, obj) => writePairBoolean(w, obj),
  decode: (r) {
    bool aVal = false;
    bool bVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readBool(); break;
        case 'b': bVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairBoolean(a: aVal, b: bVal);
  },
);

class PairInt8 {
  final int a;
  final int b;
  PairInt8({required this.a, required this.b});
}

void writePairInt8(SpecWriter w, PairInt8 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.endObject();
}

final SpecCodec<PairInt8> PairInt8Codec = SpecCodec<PairInt8>(
  encode: (w, obj) => writePairInt8(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairInt8(a: aVal, b: bVal);
  },
);

class PairInt16 {
  final int a;
  final int b;
  PairInt16({required this.a, required this.b});
}

void writePairInt16(SpecWriter w, PairInt16 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.endObject();
}

final SpecCodec<PairInt16> PairInt16Codec = SpecCodec<PairInt16>(
  encode: (w, obj) => writePairInt16(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairInt16(a: aVal, b: bVal);
  },
);

class PairInt32 {
  final int a;
  final int b;
  PairInt32({required this.a, required this.b});
}

void writePairInt32(SpecWriter w, PairInt32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.endObject();
}

final SpecCodec<PairInt32> PairInt32Codec = SpecCodec<PairInt32>(
  encode: (w, obj) => writePairInt32(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairInt32(a: aVal, b: bVal);
  },
);

class PairInt64 {
  final BigInt a;
  final BigInt b;
  PairInt64({required this.a, required this.b});
}

void writePairInt64(SpecWriter w, PairInt64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt64(obj.a);
  w.writeField('b'); w.writeInt64(obj.b);
  w.endObject();
}

final SpecCodec<PairInt64> PairInt64Codec = SpecCodec<PairInt64>(
  encode: (w, obj) => writePairInt64(w, obj),
  decode: (r) {
    BigInt aVal = BigInt.zero;
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt64(); break;
        case 'b': bVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairInt64(a: aVal, b: bVal);
  },
);

class PairUint8 {
  final int a;
  final int b;
  PairUint8({required this.a, required this.b});
}

void writePairUint8(SpecWriter w, PairUint8 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeUint32(obj.a);
  w.writeField('b'); w.writeUint32(obj.b);
  w.endObject();
}

final SpecCodec<PairUint8> PairUint8Codec = SpecCodec<PairUint8>(
  encode: (w, obj) => writePairUint8(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairUint8(a: aVal, b: bVal);
  },
);

class PairUint16 {
  final int a;
  final int b;
  PairUint16({required this.a, required this.b});
}

void writePairUint16(SpecWriter w, PairUint16 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeUint32(obj.a);
  w.writeField('b'); w.writeUint32(obj.b);
  w.endObject();
}

final SpecCodec<PairUint16> PairUint16Codec = SpecCodec<PairUint16>(
  encode: (w, obj) => writePairUint16(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairUint16(a: aVal, b: bVal);
  },
);

class PairUint32 {
  final int a;
  final int b;
  PairUint32({required this.a, required this.b});
}

void writePairUint32(SpecWriter w, PairUint32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeUint32(obj.a);
  w.writeField('b'); w.writeUint32(obj.b);
  w.endObject();
}

final SpecCodec<PairUint32> PairUint32Codec = SpecCodec<PairUint32>(
  encode: (w, obj) => writePairUint32(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairUint32(a: aVal, b: bVal);
  },
);

class PairUint64 {
  final BigInt a;
  final BigInt b;
  PairUint64({required this.a, required this.b});
}

void writePairUint64(SpecWriter w, PairUint64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeUint64(obj.a);
  w.writeField('b'); w.writeUint64(obj.b);
  w.endObject();
}

final SpecCodec<PairUint64> PairUint64Codec = SpecCodec<PairUint64>(
  encode: (w, obj) => writePairUint64(w, obj),
  decode: (r) {
    BigInt aVal = BigInt.zero;
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint64(); break;
        case 'b': bVal = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairUint64(a: aVal, b: bVal);
  },
);

class PairFloat32 {
  final double a;
  final double b;
  PairFloat32({required this.a, required this.b});
}

void writePairFloat32(SpecWriter w, PairFloat32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeFloat32(obj.a);
  w.writeField('b'); w.writeFloat32(obj.b);
  w.endObject();
}

final SpecCodec<PairFloat32> PairFloat32Codec = SpecCodec<PairFloat32>(
  encode: (w, obj) => writePairFloat32(w, obj),
  decode: (r) {
    double aVal = 0.0;
    double bVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat32(); break;
        case 'b': bVal = r.readFloat32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairFloat32(a: aVal, b: bVal);
  },
);

class PairFloat64 {
  final double a;
  final double b;
  PairFloat64({required this.a, required this.b});
}

void writePairFloat64(SpecWriter w, PairFloat64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeFloat64(obj.a);
  w.writeField('b'); w.writeFloat64(obj.b);
  w.endObject();
}

final SpecCodec<PairFloat64> PairFloat64Codec = SpecCodec<PairFloat64>(
  encode: (w, obj) => writePairFloat64(w, obj),
  decode: (r) {
    double aVal = 0.0;
    double bVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat64(); break;
        case 'b': bVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairFloat64(a: aVal, b: bVal);
  },
);

class PairBytes {
  final Uint8List a;
  final Uint8List b;
  PairBytes({required this.a, required this.b});
}

void writePairBytes(SpecWriter w, PairBytes obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeBytes(obj.a);
  w.writeField('b'); w.writeBytes(obj.b);
  w.endObject();
}

final SpecCodec<PairBytes> PairBytesCodec = SpecCodec<PairBytes>(
  encode: (w, obj) => writePairBytes(w, obj),
  decode: (r) {
    Uint8List aVal = Uint8List(0);
    Uint8List bVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readBytes(); break;
        case 'b': bVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return PairBytes(a: aVal, b: bVal);
  },
);

class DualStringInt32 {
  final String a;
  final int b;
  DualStringInt32({required this.a, required this.b});
}

void writeDualStringInt32(SpecWriter w, DualStringInt32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.endObject();
}

final SpecCodec<DualStringInt32> DualStringInt32Codec = SpecCodec<DualStringInt32>(
  encode: (w, obj) => writeDualStringInt32(w, obj),
  decode: (r) {
    String aVal = '';
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualStringInt32(a: aVal, b: bVal);
  },
);

class DualStringBoolean {
  final String a;
  final bool b;
  DualStringBoolean({required this.a, required this.b});
}

void writeDualStringBoolean(SpecWriter w, DualStringBoolean obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeBool(obj.b);
  w.endObject();
}

final SpecCodec<DualStringBoolean> DualStringBooleanCodec = SpecCodec<DualStringBoolean>(
  encode: (w, obj) => writeDualStringBoolean(w, obj),
  decode: (r) {
    String aVal = '';
    bool bVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualStringBoolean(a: aVal, b: bVal);
  },
);

class DualStringFloat64 {
  final String a;
  final double b;
  DualStringFloat64({required this.a, required this.b});
}

void writeDualStringFloat64(SpecWriter w, DualStringFloat64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeFloat64(obj.b);
  w.endObject();
}

final SpecCodec<DualStringFloat64> DualStringFloat64Codec = SpecCodec<DualStringFloat64>(
  encode: (w, obj) => writeDualStringFloat64(w, obj),
  decode: (r) {
    String aVal = '';
    double bVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualStringFloat64(a: aVal, b: bVal);
  },
);

class DualStringBytes {
  final String a;
  final Uint8List b;
  DualStringBytes({required this.a, required this.b});
}

void writeDualStringBytes(SpecWriter w, DualStringBytes obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeBytes(obj.b);
  w.endObject();
}

final SpecCodec<DualStringBytes> DualStringBytesCodec = SpecCodec<DualStringBytes>(
  encode: (w, obj) => writeDualStringBytes(w, obj),
  decode: (r) {
    String aVal = '';
    Uint8List bVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualStringBytes(a: aVal, b: bVal);
  },
);

class DualInt32Boolean {
  final int a;
  final bool b;
  DualInt32Boolean({required this.a, required this.b});
}

void writeDualInt32Boolean(SpecWriter w, DualInt32Boolean obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeBool(obj.b);
  w.endObject();
}

final SpecCodec<DualInt32Boolean> DualInt32BooleanCodec = SpecCodec<DualInt32Boolean>(
  encode: (w, obj) => writeDualInt32Boolean(w, obj),
  decode: (r) {
    int aVal = 0;
    bool bVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt32Boolean(a: aVal, b: bVal);
  },
);

class DualInt32Float64 {
  final int a;
  final double b;
  DualInt32Float64({required this.a, required this.b});
}

void writeDualInt32Float64(SpecWriter w, DualInt32Float64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeFloat64(obj.b);
  w.endObject();
}

final SpecCodec<DualInt32Float64> DualInt32Float64Codec = SpecCodec<DualInt32Float64>(
  encode: (w, obj) => writeDualInt32Float64(w, obj),
  decode: (r) {
    int aVal = 0;
    double bVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt32Float64(a: aVal, b: bVal);
  },
);

class DualInt32Int64 {
  final int a;
  final BigInt b;
  DualInt32Int64({required this.a, required this.b});
}

void writeDualInt32Int64(SpecWriter w, DualInt32Int64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeInt64(obj.b);
  w.endObject();
}

final SpecCodec<DualInt32Int64> DualInt32Int64Codec = SpecCodec<DualInt32Int64>(
  encode: (w, obj) => writeDualInt32Int64(w, obj),
  decode: (r) {
    int aVal = 0;
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt32Int64(a: aVal, b: bVal);
  },
);

class DualInt32Uint32 {
  final int a;
  final int b;
  DualInt32Uint32({required this.a, required this.b});
}

void writeDualInt32Uint32(SpecWriter w, DualInt32Uint32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeUint32(obj.b);
  w.endObject();
}

final SpecCodec<DualInt32Uint32> DualInt32Uint32Codec = SpecCodec<DualInt32Uint32>(
  encode: (w, obj) => writeDualInt32Uint32(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt32Uint32(a: aVal, b: bVal);
  },
);

class DualInt64Uint64 {
  final BigInt a;
  final BigInt b;
  DualInt64Uint64({required this.a, required this.b});
}

void writeDualInt64Uint64(SpecWriter w, DualInt64Uint64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt64(obj.a);
  w.writeField('b'); w.writeUint64(obj.b);
  w.endObject();
}

final SpecCodec<DualInt64Uint64> DualInt64Uint64Codec = SpecCodec<DualInt64Uint64>(
  encode: (w, obj) => writeDualInt64Uint64(w, obj),
  decode: (r) {
    BigInt aVal = BigInt.zero;
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt64(); break;
        case 'b': bVal = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt64Uint64(a: aVal, b: bVal);
  },
);

class DualFloat32Float64 {
  final double a;
  final double b;
  DualFloat32Float64({required this.a, required this.b});
}

void writeDualFloat32Float64(SpecWriter w, DualFloat32Float64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeFloat32(obj.a);
  w.writeField('b'); w.writeFloat64(obj.b);
  w.endObject();
}

final SpecCodec<DualFloat32Float64> DualFloat32Float64Codec = SpecCodec<DualFloat32Float64>(
  encode: (w, obj) => writeDualFloat32Float64(w, obj),
  decode: (r) {
    double aVal = 0.0;
    double bVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat32(); break;
        case 'b': bVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualFloat32Float64(a: aVal, b: bVal);
  },
);

class DualFloat64Boolean {
  final double a;
  final bool b;
  DualFloat64Boolean({required this.a, required this.b});
}

void writeDualFloat64Boolean(SpecWriter w, DualFloat64Boolean obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeFloat64(obj.a);
  w.writeField('b'); w.writeBool(obj.b);
  w.endObject();
}

final SpecCodec<DualFloat64Boolean> DualFloat64BooleanCodec = SpecCodec<DualFloat64Boolean>(
  encode: (w, obj) => writeDualFloat64Boolean(w, obj),
  decode: (r) {
    double aVal = 0.0;
    bool bVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat64(); break;
        case 'b': bVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualFloat64Boolean(a: aVal, b: bVal);
  },
);

class DualFloat64Bytes {
  final double a;
  final Uint8List b;
  DualFloat64Bytes({required this.a, required this.b});
}

void writeDualFloat64Bytes(SpecWriter w, DualFloat64Bytes obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeFloat64(obj.a);
  w.writeField('b'); w.writeBytes(obj.b);
  w.endObject();
}

final SpecCodec<DualFloat64Bytes> DualFloat64BytesCodec = SpecCodec<DualFloat64Bytes>(
  encode: (w, obj) => writeDualFloat64Bytes(w, obj),
  decode: (r) {
    double aVal = 0.0;
    Uint8List bVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat64(); break;
        case 'b': bVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualFloat64Bytes(a: aVal, b: bVal);
  },
);

class DualUint32Uint64 {
  final int a;
  final BigInt b;
  DualUint32Uint64({required this.a, required this.b});
}

void writeDualUint32Uint64(SpecWriter w, DualUint32Uint64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeUint32(obj.a);
  w.writeField('b'); w.writeUint64(obj.b);
  w.endObject();
}

final SpecCodec<DualUint32Uint64> DualUint32Uint64Codec = SpecCodec<DualUint32Uint64>(
  encode: (w, obj) => writeDualUint32Uint64(w, obj),
  decode: (r) {
    int aVal = 0;
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualUint32Uint64(a: aVal, b: bVal);
  },
);

class DualBooleanBytes {
  final bool a;
  final Uint8List b;
  DualBooleanBytes({required this.a, required this.b});
}

void writeDualBooleanBytes(SpecWriter w, DualBooleanBytes obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeBool(obj.a);
  w.writeField('b'); w.writeBytes(obj.b);
  w.endObject();
}

final SpecCodec<DualBooleanBytes> DualBooleanBytesCodec = SpecCodec<DualBooleanBytes>(
  encode: (w, obj) => writeDualBooleanBytes(w, obj),
  decode: (r) {
    bool aVal = false;
    Uint8List bVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readBool(); break;
        case 'b': bVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualBooleanBytes(a: aVal, b: bVal);
  },
);

class DualInt8Uint8 {
  final int a;
  final int b;
  DualInt8Uint8({required this.a, required this.b});
}

void writeDualInt8Uint8(SpecWriter w, DualInt8Uint8 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeUint32(obj.b);
  w.endObject();
}

final SpecCodec<DualInt8Uint8> DualInt8Uint8Codec = SpecCodec<DualInt8Uint8>(
  encode: (w, obj) => writeDualInt8Uint8(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt8Uint8(a: aVal, b: bVal);
  },
);

class DualInt16Uint16 {
  final int a;
  final int b;
  DualInt16Uint16({required this.a, required this.b});
}

void writeDualInt16Uint16(SpecWriter w, DualInt16Uint16 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeUint32(obj.b);
  w.endObject();
}

final SpecCodec<DualInt16Uint16> DualInt16Uint16Codec = SpecCodec<DualInt16Uint16>(
  encode: (w, obj) => writeDualInt16Uint16(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt16Uint16(a: aVal, b: bVal);
  },
);

class DualStringInt64 {
  final String a;
  final BigInt b;
  DualStringInt64({required this.a, required this.b});
}

void writeDualStringInt64(SpecWriter w, DualStringInt64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeInt64(obj.b);
  w.endObject();
}

final SpecCodec<DualStringInt64> DualStringInt64Codec = SpecCodec<DualStringInt64>(
  encode: (w, obj) => writeDualStringInt64(w, obj),
  decode: (r) {
    String aVal = '';
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualStringInt64(a: aVal, b: bVal);
  },
);

class DualStringUint64 {
  final String a;
  final BigInt b;
  DualStringUint64({required this.a, required this.b});
}

void writeDualStringUint64(SpecWriter w, DualStringUint64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeUint64(obj.b);
  w.endObject();
}

final SpecCodec<DualStringUint64> DualStringUint64Codec = SpecCodec<DualStringUint64>(
  encode: (w, obj) => writeDualStringUint64(w, obj),
  decode: (r) {
    String aVal = '';
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualStringUint64(a: aVal, b: bVal);
  },
);

class DualInt32Bytes {
  final int a;
  final Uint8List b;
  DualInt32Bytes({required this.a, required this.b});
}

void writeDualInt32Bytes(SpecWriter w, DualInt32Bytes obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeBytes(obj.b);
  w.endObject();
}

final SpecCodec<DualInt32Bytes> DualInt32BytesCodec = SpecCodec<DualInt32Bytes>(
  encode: (w, obj) => writeDualInt32Bytes(w, obj),
  decode: (r) {
    int aVal = 0;
    Uint8List bVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt32Bytes(a: aVal, b: bVal);
  },
);

class DualFloat64Int32 {
  final double a;
  final int b;
  DualFloat64Int32({required this.a, required this.b});
}

void writeDualFloat64Int32(SpecWriter w, DualFloat64Int32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeFloat64(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.endObject();
}

final SpecCodec<DualFloat64Int32> DualFloat64Int32Codec = SpecCodec<DualFloat64Int32>(
  encode: (w, obj) => writeDualFloat64Int32(w, obj),
  decode: (r) {
    double aVal = 0.0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat64(); break;
        case 'b': bVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualFloat64Int32(a: aVal, b: bVal);
  },
);

class DualBooleanInt32 {
  final bool a;
  final int b;
  DualBooleanInt32({required this.a, required this.b});
}

void writeDualBooleanInt32(SpecWriter w, DualBooleanInt32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeBool(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.endObject();
}

final SpecCodec<DualBooleanInt32> DualBooleanInt32Codec = SpecCodec<DualBooleanInt32>(
  encode: (w, obj) => writeDualBooleanInt32(w, obj),
  decode: (r) {
    bool aVal = false;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readBool(); break;
        case 'b': bVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualBooleanInt32(a: aVal, b: bVal);
  },
);

class DualBytesInt64 {
  final Uint8List a;
  final BigInt b;
  DualBytesInt64({required this.a, required this.b});
}

void writeDualBytesInt64(SpecWriter w, DualBytesInt64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeBytes(obj.a);
  w.writeField('b'); w.writeInt64(obj.b);
  w.endObject();
}

final SpecCodec<DualBytesInt64> DualBytesInt64Codec = SpecCodec<DualBytesInt64>(
  encode: (w, obj) => writeDualBytesInt64(w, obj),
  decode: (r) {
    Uint8List aVal = Uint8List(0);
    BigInt bVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readBytes(); break;
        case 'b': bVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualBytesInt64(a: aVal, b: bVal);
  },
);

class DualInt8Float32 {
  final int a;
  final double b;
  DualInt8Float32({required this.a, required this.b});
}

void writeDualInt8Float32(SpecWriter w, DualInt8Float32 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeFloat32(obj.b);
  w.endObject();
}

final SpecCodec<DualInt8Float32> DualInt8Float32Codec = SpecCodec<DualInt8Float32>(
  encode: (w, obj) => writeDualInt8Float32(w, obj),
  decode: (r) {
    int aVal = 0;
    double bVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readFloat32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt8Float32(a: aVal, b: bVal);
  },
);

class DualUint8Int16 {
  final int a;
  final int b;
  DualUint8Int16({required this.a, required this.b});
}

void writeDualUint8Int16(SpecWriter w, DualUint8Int16 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeUint32(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.endObject();
}

final SpecCodec<DualUint8Int16> DualUint8Int16Codec = SpecCodec<DualUint8Int16>(
  encode: (w, obj) => writeDualUint8Int16(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualUint8Int16(a: aVal, b: bVal);
  },
);

class DualInt64Float64 {
  final BigInt a;
  final double b;
  DualInt64Float64({required this.a, required this.b});
}

void writeDualInt64Float64(SpecWriter w, DualInt64Float64 obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeInt64(obj.a);
  w.writeField('b'); w.writeFloat64(obj.b);
  w.endObject();
}

final SpecCodec<DualInt64Float64> DualInt64Float64Codec = SpecCodec<DualInt64Float64>(
  encode: (w, obj) => writeDualInt64Float64(w, obj),
  decode: (r) {
    BigInt aVal = BigInt.zero;
    double bVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt64(); break;
        case 'b': bVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualInt64Float64(a: aVal, b: bVal);
  },
);

class DualUint64String {
  final BigInt a;
  final String b;
  DualUint64String({required this.a, required this.b});
}

void writeDualUint64String(SpecWriter w, DualUint64String obj) {
  w.beginObject(2);
  w.writeField('a'); w.writeUint64(obj.a);
  w.writeField('b'); w.writeString(obj.b);
  w.endObject();
}

final SpecCodec<DualUint64String> DualUint64StringCodec = SpecCodec<DualUint64String>(
  encode: (w, obj) => writeDualUint64String(w, obj),
  decode: (r) {
    BigInt aVal = BigInt.zero;
    String bVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint64(); break;
        case 'b': bVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DualUint64String(a: aVal, b: bVal);
  },
);

class Triple01 {
  final String a;
  final int b;
  final bool c;
  Triple01({required this.a, required this.b, required this.c});
}

void writeTriple01(SpecWriter w, Triple01 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.writeField('c'); w.writeBool(obj.c);
  w.endObject();
}

final SpecCodec<Triple01> Triple01Codec = SpecCodec<Triple01>(
  encode: (w, obj) => writeTriple01(w, obj),
  decode: (r) {
    String aVal = '';
    int bVal = 0;
    bool cVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readInt32(); break;
        case 'c': cVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple01(a: aVal, b: bVal, c: cVal);
  },
);

class Triple02 {
  final double a;
  final double b;
  final double c;
  Triple02({required this.a, required this.b, required this.c});
}

void writeTriple02(SpecWriter w, Triple02 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeFloat64(obj.a);
  w.writeField('b'); w.writeFloat64(obj.b);
  w.writeField('c'); w.writeFloat64(obj.c);
  w.endObject();
}

final SpecCodec<Triple02> Triple02Codec = SpecCodec<Triple02>(
  encode: (w, obj) => writeTriple02(w, obj),
  decode: (r) {
    double aVal = 0.0;
    double bVal = 0.0;
    double cVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat64(); break;
        case 'b': bVal = r.readFloat64(); break;
        case 'c': cVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple02(a: aVal, b: bVal, c: cVal);
  },
);

class Triple03 {
  final int a;
  final int b;
  final int c;
  Triple03({required this.a, required this.b, required this.c});
}

void writeTriple03(SpecWriter w, Triple03 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.writeField('c'); w.writeInt32(obj.c);
  w.endObject();
}

final SpecCodec<Triple03> Triple03Codec = SpecCodec<Triple03>(
  encode: (w, obj) => writeTriple03(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    int cVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readInt32(); break;
        case 'c': cVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple03(a: aVal, b: bVal, c: cVal);
  },
);

class Triple04 {
  final String a;
  final String b;
  final int c;
  Triple04({required this.a, required this.b, required this.c});
}

void writeTriple04(SpecWriter w, Triple04 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeString(obj.b);
  w.writeField('c'); w.writeInt32(obj.c);
  w.endObject();
}

final SpecCodec<Triple04> Triple04Codec = SpecCodec<Triple04>(
  encode: (w, obj) => writeTriple04(w, obj),
  decode: (r) {
    String aVal = '';
    String bVal = '';
    int cVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readString(); break;
        case 'c': cVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple04(a: aVal, b: bVal, c: cVal);
  },
);

class Triple05 {
  final BigInt a;
  final String b;
  final bool c;
  Triple05({required this.a, required this.b, required this.c});
}

void writeTriple05(SpecWriter w, Triple05 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeInt64(obj.a);
  w.writeField('b'); w.writeString(obj.b);
  w.writeField('c'); w.writeBool(obj.c);
  w.endObject();
}

final SpecCodec<Triple05> Triple05Codec = SpecCodec<Triple05>(
  encode: (w, obj) => writeTriple05(w, obj),
  decode: (r) {
    BigInt aVal = BigInt.zero;
    String bVal = '';
    bool cVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt64(); break;
        case 'b': bVal = r.readString(); break;
        case 'c': cVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple05(a: aVal, b: bVal, c: cVal);
  },
);

class Triple06 {
  final int a;
  final BigInt b;
  final String c;
  Triple06({required this.a, required this.b, required this.c});
}

void writeTriple06(SpecWriter w, Triple06 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeUint32(obj.a);
  w.writeField('b'); w.writeUint64(obj.b);
  w.writeField('c'); w.writeString(obj.c);
  w.endObject();
}

final SpecCodec<Triple06> Triple06Codec = SpecCodec<Triple06>(
  encode: (w, obj) => writeTriple06(w, obj),
  decode: (r) {
    int aVal = 0;
    BigInt bVal = BigInt.zero;
    String cVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readUint64(); break;
        case 'c': cVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple06(a: aVal, b: bVal, c: cVal);
  },
);

class Triple07 {
  final Uint8List a;
  final String b;
  final int c;
  Triple07({required this.a, required this.b, required this.c});
}

void writeTriple07(SpecWriter w, Triple07 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeBytes(obj.a);
  w.writeField('b'); w.writeString(obj.b);
  w.writeField('c'); w.writeInt32(obj.c);
  w.endObject();
}

final SpecCodec<Triple07> Triple07Codec = SpecCodec<Triple07>(
  encode: (w, obj) => writeTriple07(w, obj),
  decode: (r) {
    Uint8List aVal = Uint8List(0);
    String bVal = '';
    int cVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readBytes(); break;
        case 'b': bVal = r.readString(); break;
        case 'c': cVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple07(a: aVal, b: bVal, c: cVal);
  },
);

class Triple08 {
  final double a;
  final int b;
  final bool c;
  Triple08({required this.a, required this.b, required this.c});
}

void writeTriple08(SpecWriter w, Triple08 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeFloat32(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.writeField('c'); w.writeBool(obj.c);
  w.endObject();
}

final SpecCodec<Triple08> Triple08Codec = SpecCodec<Triple08>(
  encode: (w, obj) => writeTriple08(w, obj),
  decode: (r) {
    double aVal = 0.0;
    int bVal = 0;
    bool cVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat32(); break;
        case 'b': bVal = r.readInt32(); break;
        case 'c': cVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple08(a: aVal, b: bVal, c: cVal);
  },
);

class Triple09 {
  final String a;
  final BigInt b;
  final double c;
  Triple09({required this.a, required this.b, required this.c});
}

void writeTriple09(SpecWriter w, Triple09 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeInt64(obj.b);
  w.writeField('c'); w.writeFloat64(obj.c);
  w.endObject();
}

final SpecCodec<Triple09> Triple09Codec = SpecCodec<Triple09>(
  encode: (w, obj) => writeTriple09(w, obj),
  decode: (r) {
    String aVal = '';
    BigInt bVal = BigInt.zero;
    double cVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readInt64(); break;
        case 'c': cVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple09(a: aVal, b: bVal, c: cVal);
  },
);

class Triple10 {
  final bool a;
  final bool b;
  final bool c;
  Triple10({required this.a, required this.b, required this.c});
}

void writeTriple10(SpecWriter w, Triple10 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeBool(obj.a);
  w.writeField('b'); w.writeBool(obj.b);
  w.writeField('c'); w.writeBool(obj.c);
  w.endObject();
}

final SpecCodec<Triple10> Triple10Codec = SpecCodec<Triple10>(
  encode: (w, obj) => writeTriple10(w, obj),
  decode: (r) {
    bool aVal = false;
    bool bVal = false;
    bool cVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readBool(); break;
        case 'b': bVal = r.readBool(); break;
        case 'c': cVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple10(a: aVal, b: bVal, c: cVal);
  },
);

class Triple11 {
  final int a;
  final int b;
  final int c;
  Triple11({required this.a, required this.b, required this.c});
}

void writeTriple11(SpecWriter w, Triple11 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeInt32(obj.b);
  w.writeField('c'); w.writeInt32(obj.c);
  w.endObject();
}

final SpecCodec<Triple11> Triple11Codec = SpecCodec<Triple11>(
  encode: (w, obj) => writeTriple11(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    int cVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readInt32(); break;
        case 'c': cVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple11(a: aVal, b: bVal, c: cVal);
  },
);

class Triple12 {
  final int a;
  final int b;
  final int c;
  Triple12({required this.a, required this.b, required this.c});
}

void writeTriple12(SpecWriter w, Triple12 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeUint32(obj.a);
  w.writeField('b'); w.writeUint32(obj.b);
  w.writeField('c'); w.writeUint32(obj.c);
  w.endObject();
}

final SpecCodec<Triple12> Triple12Codec = SpecCodec<Triple12>(
  encode: (w, obj) => writeTriple12(w, obj),
  decode: (r) {
    int aVal = 0;
    int bVal = 0;
    int cVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readUint32(); break;
        case 'c': cVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple12(a: aVal, b: bVal, c: cVal);
  },
);

class Triple13 {
  final String a;
  final Uint8List b;
  final double c;
  Triple13({required this.a, required this.b, required this.c});
}

void writeTriple13(SpecWriter w, Triple13 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeString(obj.a);
  w.writeField('b'); w.writeBytes(obj.b);
  w.writeField('c'); w.writeFloat64(obj.c);
  w.endObject();
}

final SpecCodec<Triple13> Triple13Codec = SpecCodec<Triple13>(
  encode: (w, obj) => writeTriple13(w, obj),
  decode: (r) {
    String aVal = '';
    Uint8List bVal = Uint8List(0);
    double cVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readString(); break;
        case 'b': bVal = r.readBytes(); break;
        case 'c': cVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple13(a: aVal, b: bVal, c: cVal);
  },
);

class Triple14 {
  final BigInt a;
  final BigInt b;
  final bool c;
  Triple14({required this.a, required this.b, required this.c});
}

void writeTriple14(SpecWriter w, Triple14 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeInt64(obj.a);
  w.writeField('b'); w.writeUint64(obj.b);
  w.writeField('c'); w.writeBool(obj.c);
  w.endObject();
}

final SpecCodec<Triple14> Triple14Codec = SpecCodec<Triple14>(
  encode: (w, obj) => writeTriple14(w, obj),
  decode: (r) {
    BigInt aVal = BigInt.zero;
    BigInt bVal = BigInt.zero;
    bool cVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt64(); break;
        case 'b': bVal = r.readUint64(); break;
        case 'c': cVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple14(a: aVal, b: bVal, c: cVal);
  },
);

class Triple15 {
  final double a;
  final String b;
  final Uint8List c;
  Triple15({required this.a, required this.b, required this.c});
}

void writeTriple15(SpecWriter w, Triple15 obj) {
  w.beginObject(3);
  w.writeField('a'); w.writeFloat64(obj.a);
  w.writeField('b'); w.writeString(obj.b);
  w.writeField('c'); w.writeBytes(obj.c);
  w.endObject();
}

final SpecCodec<Triple15> Triple15Codec = SpecCodec<Triple15>(
  encode: (w, obj) => writeTriple15(w, obj),
  decode: (r) {
    double aVal = 0.0;
    String bVal = '';
    Uint8List cVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readFloat64(); break;
        case 'b': bVal = r.readString(); break;
        case 'c': cVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Triple15(a: aVal, b: bVal, c: cVal);
  },
);
