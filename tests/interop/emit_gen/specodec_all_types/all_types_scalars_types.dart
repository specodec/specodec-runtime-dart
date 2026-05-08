library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class SingleString {
  final String v;
  SingleString({required this.v});
}

void writeSingleString(SpecWriter w, SingleString obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeString(obj.v);
  w.endObject();
}

final SpecCodec<SingleString> SingleStringCodec = SpecCodec<SingleString>(
  encode: (w, obj) => writeSingleString(w, obj),
  decode: (r) {
    String vVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleString(v: vVal);
  },
);

class SingleBoolean {
  final bool v;
  SingleBoolean({required this.v});
}

void writeSingleBoolean(SpecWriter w, SingleBoolean obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeBool(obj.v);
  w.endObject();
}

final SpecCodec<SingleBoolean> SingleBooleanCodec = SpecCodec<SingleBoolean>(
  encode: (w, obj) => writeSingleBoolean(w, obj),
  decode: (r) {
    bool vVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleBoolean(v: vVal);
  },
);

class SingleInt8 {
  final int v;
  SingleInt8({required this.v});
}

void writeSingleInt8(SpecWriter w, SingleInt8 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeInt32(obj.v);
  w.endObject();
}

final SpecCodec<SingleInt8> SingleInt8Codec = SpecCodec<SingleInt8>(
  encode: (w, obj) => writeSingleInt8(w, obj),
  decode: (r) {
    int vVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleInt8(v: vVal);
  },
);

class SingleInt16 {
  final int v;
  SingleInt16({required this.v});
}

void writeSingleInt16(SpecWriter w, SingleInt16 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeInt32(obj.v);
  w.endObject();
}

final SpecCodec<SingleInt16> SingleInt16Codec = SpecCodec<SingleInt16>(
  encode: (w, obj) => writeSingleInt16(w, obj),
  decode: (r) {
    int vVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleInt16(v: vVal);
  },
);

class SingleInt32 {
  final int v;
  SingleInt32({required this.v});
}

void writeSingleInt32(SpecWriter w, SingleInt32 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeInt32(obj.v);
  w.endObject();
}

final SpecCodec<SingleInt32> SingleInt32Codec = SpecCodec<SingleInt32>(
  encode: (w, obj) => writeSingleInt32(w, obj),
  decode: (r) {
    int vVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleInt32(v: vVal);
  },
);

class SingleInt64 {
  final BigInt v;
  SingleInt64({required this.v});
}

void writeSingleInt64(SpecWriter w, SingleInt64 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeInt64(obj.v);
  w.endObject();
}

final SpecCodec<SingleInt64> SingleInt64Codec = SpecCodec<SingleInt64>(
  encode: (w, obj) => writeSingleInt64(w, obj),
  decode: (r) {
    BigInt vVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleInt64(v: vVal);
  },
);

class SingleUint8 {
  final int v;
  SingleUint8({required this.v});
}

void writeSingleUint8(SpecWriter w, SingleUint8 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeUint32(obj.v);
  w.endObject();
}

final SpecCodec<SingleUint8> SingleUint8Codec = SpecCodec<SingleUint8>(
  encode: (w, obj) => writeSingleUint8(w, obj),
  decode: (r) {
    int vVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleUint8(v: vVal);
  },
);

class SingleUint16 {
  final int v;
  SingleUint16({required this.v});
}

void writeSingleUint16(SpecWriter w, SingleUint16 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeUint32(obj.v);
  w.endObject();
}

final SpecCodec<SingleUint16> SingleUint16Codec = SpecCodec<SingleUint16>(
  encode: (w, obj) => writeSingleUint16(w, obj),
  decode: (r) {
    int vVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleUint16(v: vVal);
  },
);

class SingleUint32 {
  final int v;
  SingleUint32({required this.v});
}

void writeSingleUint32(SpecWriter w, SingleUint32 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeUint32(obj.v);
  w.endObject();
}

final SpecCodec<SingleUint32> SingleUint32Codec = SpecCodec<SingleUint32>(
  encode: (w, obj) => writeSingleUint32(w, obj),
  decode: (r) {
    int vVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleUint32(v: vVal);
  },
);

class SingleUint64 {
  final BigInt v;
  SingleUint64({required this.v});
}

void writeSingleUint64(SpecWriter w, SingleUint64 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeUint64(obj.v);
  w.endObject();
}

final SpecCodec<SingleUint64> SingleUint64Codec = SpecCodec<SingleUint64>(
  encode: (w, obj) => writeSingleUint64(w, obj),
  decode: (r) {
    BigInt vVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleUint64(v: vVal);
  },
);

class SingleFloat32 {
  final double v;
  SingleFloat32({required this.v});
}

void writeSingleFloat32(SpecWriter w, SingleFloat32 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeFloat32(obj.v);
  w.endObject();
}

final SpecCodec<SingleFloat32> SingleFloat32Codec = SpecCodec<SingleFloat32>(
  encode: (w, obj) => writeSingleFloat32(w, obj),
  decode: (r) {
    double vVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readFloat32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleFloat32(v: vVal);
  },
);

class SingleFloat64 {
  final double v;
  SingleFloat64({required this.v});
}

void writeSingleFloat64(SpecWriter w, SingleFloat64 obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeFloat64(obj.v);
  w.endObject();
}

final SpecCodec<SingleFloat64> SingleFloat64Codec = SpecCodec<SingleFloat64>(
  encode: (w, obj) => writeSingleFloat64(w, obj),
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
    return SingleFloat64(v: vVal);
  },
);

class SingleBytes {
  final Uint8List v;
  SingleBytes({required this.v});
}

void writeSingleBytes(SpecWriter w, SingleBytes obj) {
  w.beginObject(1);
  w.writeField('v'); w.writeBytes(obj.v);
  w.endObject();
}

final SpecCodec<SingleBytes> SingleBytesCodec = SpecCodec<SingleBytes>(
  encode: (w, obj) => writeSingleBytes(w, obj),
  decode: (r) {
    Uint8List vVal = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'v': vVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return SingleBytes(v: vVal);
  },
);
