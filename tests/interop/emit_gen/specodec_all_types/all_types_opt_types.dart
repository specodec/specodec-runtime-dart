library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class OptSingleString {
  final String? v;
  OptSingleString({this.v});
}

void writeOptSingleString(SpecWriter w, OptSingleString obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeString(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleString> OptSingleStringCodec = SpecCodec<OptSingleString>(
  encode: (w, obj) => writeOptSingleString(w, obj),
  decode: (r) {
    String? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleString(v: vVal);
  },
);

class OptSingleBoolean {
  final bool? v;
  OptSingleBoolean({this.v});
}

void writeOptSingleBoolean(SpecWriter w, OptSingleBoolean obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeBool(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleBoolean> OptSingleBooleanCodec = SpecCodec<OptSingleBoolean>(
  encode: (w, obj) => writeOptSingleBoolean(w, obj),
  decode: (r) {
    bool? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleBoolean(v: vVal);
  },
);

class OptSingleInt8 {
  final int? v;
  OptSingleInt8({this.v});
}

void writeOptSingleInt8(SpecWriter w, OptSingleInt8 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeInt32(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleInt8> OptSingleInt8Codec = SpecCodec<OptSingleInt8>(
  encode: (w, obj) => writeOptSingleInt8(w, obj),
  decode: (r) {
    int? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleInt8(v: vVal);
  },
);

class OptSingleInt16 {
  final int? v;
  OptSingleInt16({this.v});
}

void writeOptSingleInt16(SpecWriter w, OptSingleInt16 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeInt32(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleInt16> OptSingleInt16Codec = SpecCodec<OptSingleInt16>(
  encode: (w, obj) => writeOptSingleInt16(w, obj),
  decode: (r) {
    int? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleInt16(v: vVal);
  },
);

class OptSingleInt32 {
  final int? v;
  OptSingleInt32({this.v});
}

void writeOptSingleInt32(SpecWriter w, OptSingleInt32 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeInt32(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleInt32> OptSingleInt32Codec = SpecCodec<OptSingleInt32>(
  encode: (w, obj) => writeOptSingleInt32(w, obj),
  decode: (r) {
    int? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleInt32(v: vVal);
  },
);

class OptSingleInt64 {
  final BigInt? v;
  OptSingleInt64({this.v});
}

void writeOptSingleInt64(SpecWriter w, OptSingleInt64 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeInt64(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleInt64> OptSingleInt64Codec = SpecCodec<OptSingleInt64>(
  encode: (w, obj) => writeOptSingleInt64(w, obj),
  decode: (r) {
    BigInt? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleInt64(v: vVal);
  },
);

class OptSingleUint8 {
  final int? v;
  OptSingleUint8({this.v});
}

void writeOptSingleUint8(SpecWriter w, OptSingleUint8 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeUint32(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleUint8> OptSingleUint8Codec = SpecCodec<OptSingleUint8>(
  encode: (w, obj) => writeOptSingleUint8(w, obj),
  decode: (r) {
    int? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleUint8(v: vVal);
  },
);

class OptSingleUint16 {
  final int? v;
  OptSingleUint16({this.v});
}

void writeOptSingleUint16(SpecWriter w, OptSingleUint16 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeUint32(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleUint16> OptSingleUint16Codec = SpecCodec<OptSingleUint16>(
  encode: (w, obj) => writeOptSingleUint16(w, obj),
  decode: (r) {
    int? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleUint16(v: vVal);
  },
);

class OptSingleUint32 {
  final int? v;
  OptSingleUint32({this.v});
}

void writeOptSingleUint32(SpecWriter w, OptSingleUint32 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeUint32(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleUint32> OptSingleUint32Codec = SpecCodec<OptSingleUint32>(
  encode: (w, obj) => writeOptSingleUint32(w, obj),
  decode: (r) {
    int? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleUint32(v: vVal);
  },
);

class OptSingleUint64 {
  final BigInt? v;
  OptSingleUint64({this.v});
}

void writeOptSingleUint64(SpecWriter w, OptSingleUint64 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeUint64(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleUint64> OptSingleUint64Codec = SpecCodec<OptSingleUint64>(
  encode: (w, obj) => writeOptSingleUint64(w, obj),
  decode: (r) {
    BigInt? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleUint64(v: vVal);
  },
);

class OptSingleFloat32 {
  final double? v;
  OptSingleFloat32({this.v});
}

void writeOptSingleFloat32(SpecWriter w, OptSingleFloat32 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeFloat32(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleFloat32> OptSingleFloat32Codec = SpecCodec<OptSingleFloat32>(
  encode: (w, obj) => writeOptSingleFloat32(w, obj),
  decode: (r) {
    double? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readFloat32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleFloat32(v: vVal);
  },
);

class OptSingleFloat64 {
  final double? v;
  OptSingleFloat64({this.v});
}

void writeOptSingleFloat64(SpecWriter w, OptSingleFloat64 obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeFloat64(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleFloat64> OptSingleFloat64Codec = SpecCodec<OptSingleFloat64>(
  encode: (w, obj) => writeOptSingleFloat64(w, obj),
  decode: (r) {
    double? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleFloat64(v: vVal);
  },
);

class OptSingleBytes {
  final Uint8List? v;
  OptSingleBytes({this.v});
}

void writeOptSingleBytes(SpecWriter w, OptSingleBytes obj) {
  var fieldCount = 0;
  if (obj.v != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.v != null) { w.writeField('v'); w.writeBytes(obj.v!); }
  w.endObject();
}

final SpecCodec<OptSingleBytes> OptSingleBytesCodec = SpecCodec<OptSingleBytes>(
  encode: (w, obj) => writeOptSingleBytes(w, obj),
  decode: (r) {
    Uint8List? vVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptSingleBytes(v: vVal);
  },
);
