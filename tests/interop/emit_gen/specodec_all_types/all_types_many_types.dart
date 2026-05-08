library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class Five01 {
  final String f1;
  final int f2;
  final bool f3;
  final double f4;
  final Uint8List f5;
  Five01({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive01(SpecWriter w, Five01 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeString(obj.f1);
  w.writeField('f2'); w.writeInt32(obj.f2);
  w.writeField('f3'); w.writeBool(obj.f3);
  w.writeField('f4'); w.writeFloat64(obj.f4);
  w.writeField('f5'); w.writeBytes(obj.f5);
  w.endObject();
}

final SpecCodec<Five01> Five01Codec = SpecCodec<Five01>(
  encode: (w, obj) => writeFive01(w, obj),
  decode: (r) {
    String f1Val = '';
    int f2Val = 0;
    bool f3Val = false;
    double f4Val = 0.0;
    Uint8List f5Val = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readString(); break;
        case 'f2': f2Val = r.readInt32(); break;
        case 'f3': f3Val = r.readBool(); break;
        case 'f4': f4Val = r.readFloat64(); break;
        case 'f5': f5Val = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five01(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five02 {
  final int f1;
  final int f2;
  final int f3;
  final int f4;
  final int f5;
  Five02({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive02(SpecWriter w, Five02 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeInt32(obj.f1);
  w.writeField('f2'); w.writeInt32(obj.f2);
  w.writeField('f3'); w.writeInt32(obj.f3);
  w.writeField('f4'); w.writeInt32(obj.f4);
  w.writeField('f5'); w.writeInt32(obj.f5);
  w.endObject();
}

final SpecCodec<Five02> Five02Codec = SpecCodec<Five02>(
  encode: (w, obj) => writeFive02(w, obj),
  decode: (r) {
    int f1Val = 0;
    int f2Val = 0;
    int f3Val = 0;
    int f4Val = 0;
    int f5Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readInt32(); break;
        case 'f2': f2Val = r.readInt32(); break;
        case 'f3': f3Val = r.readInt32(); break;
        case 'f4': f4Val = r.readInt32(); break;
        case 'f5': f5Val = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five02(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five03 {
  final String f1;
  final String f2;
  final String f3;
  final String f4;
  final String f5;
  Five03({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive03(SpecWriter w, Five03 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeString(obj.f1);
  w.writeField('f2'); w.writeString(obj.f2);
  w.writeField('f3'); w.writeString(obj.f3);
  w.writeField('f4'); w.writeString(obj.f4);
  w.writeField('f5'); w.writeString(obj.f5);
  w.endObject();
}

final SpecCodec<Five03> Five03Codec = SpecCodec<Five03>(
  encode: (w, obj) => writeFive03(w, obj),
  decode: (r) {
    String f1Val = '';
    String f2Val = '';
    String f3Val = '';
    String f4Val = '';
    String f5Val = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readString(); break;
        case 'f2': f2Val = r.readString(); break;
        case 'f3': f3Val = r.readString(); break;
        case 'f4': f4Val = r.readString(); break;
        case 'f5': f5Val = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five03(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five04 {
  final double f1;
  final int f2;
  final String f3;
  final bool f4;
  final Uint8List f5;
  Five04({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive04(SpecWriter w, Five04 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeFloat64(obj.f1);
  w.writeField('f2'); w.writeInt32(obj.f2);
  w.writeField('f3'); w.writeString(obj.f3);
  w.writeField('f4'); w.writeBool(obj.f4);
  w.writeField('f5'); w.writeBytes(obj.f5);
  w.endObject();
}

final SpecCodec<Five04> Five04Codec = SpecCodec<Five04>(
  encode: (w, obj) => writeFive04(w, obj),
  decode: (r) {
    double f1Val = 0.0;
    int f2Val = 0;
    String f3Val = '';
    bool f4Val = false;
    Uint8List f5Val = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readFloat64(); break;
        case 'f2': f2Val = r.readInt32(); break;
        case 'f3': f3Val = r.readString(); break;
        case 'f4': f4Val = r.readBool(); break;
        case 'f5': f5Val = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five04(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five05 {
  final BigInt f1;
  final BigInt f2;
  final String f3;
  final double f4;
  final int f5;
  Five05({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive05(SpecWriter w, Five05 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeInt64(obj.f1);
  w.writeField('f2'); w.writeUint64(obj.f2);
  w.writeField('f3'); w.writeString(obj.f3);
  w.writeField('f4'); w.writeFloat32(obj.f4);
  w.writeField('f5'); w.writeInt32(obj.f5);
  w.endObject();
}

final SpecCodec<Five05> Five05Codec = SpecCodec<Five05>(
  encode: (w, obj) => writeFive05(w, obj),
  decode: (r) {
    BigInt f1Val = BigInt.zero;
    BigInt f2Val = BigInt.zero;
    String f3Val = '';
    double f4Val = 0.0;
    int f5Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readInt64(); break;
        case 'f2': f2Val = r.readUint64(); break;
        case 'f3': f3Val = r.readString(); break;
        case 'f4': f4Val = r.readFloat32(); break;
        case 'f5': f5Val = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five05(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five06 {
  final bool f1;
  final String f2;
  final int f3;
  final double f4;
  final int f5;
  Five06({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive06(SpecWriter w, Five06 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeBool(obj.f1);
  w.writeField('f2'); w.writeString(obj.f2);
  w.writeField('f3'); w.writeInt32(obj.f3);
  w.writeField('f4'); w.writeFloat64(obj.f4);
  w.writeField('f5'); w.writeUint32(obj.f5);
  w.endObject();
}

final SpecCodec<Five06> Five06Codec = SpecCodec<Five06>(
  encode: (w, obj) => writeFive06(w, obj),
  decode: (r) {
    bool f1Val = false;
    String f2Val = '';
    int f3Val = 0;
    double f4Val = 0.0;
    int f5Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readBool(); break;
        case 'f2': f2Val = r.readString(); break;
        case 'f3': f3Val = r.readInt32(); break;
        case 'f4': f4Val = r.readFloat64(); break;
        case 'f5': f5Val = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five06(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five07 {
  final Uint8List f1;
  final Uint8List f2;
  final String f3;
  final int f4;
  final double f5;
  Five07({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive07(SpecWriter w, Five07 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeBytes(obj.f1);
  w.writeField('f2'); w.writeBytes(obj.f2);
  w.writeField('f3'); w.writeString(obj.f3);
  w.writeField('f4'); w.writeInt32(obj.f4);
  w.writeField('f5'); w.writeFloat64(obj.f5);
  w.endObject();
}

final SpecCodec<Five07> Five07Codec = SpecCodec<Five07>(
  encode: (w, obj) => writeFive07(w, obj),
  decode: (r) {
    Uint8List f1Val = Uint8List(0);
    Uint8List f2Val = Uint8List(0);
    String f3Val = '';
    int f4Val = 0;
    double f5Val = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readBytes(); break;
        case 'f2': f2Val = r.readBytes(); break;
        case 'f3': f3Val = r.readString(); break;
        case 'f4': f4Val = r.readInt32(); break;
        case 'f5': f5Val = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five07(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five08 {
  final int f1;
  final int f2;
  final int f3;
  final int f4;
  final int f5;
  Five08({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive08(SpecWriter w, Five08 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeUint32(obj.f1);
  w.writeField('f2'); w.writeUint32(obj.f2);
  w.writeField('f3'); w.writeUint32(obj.f3);
  w.writeField('f4'); w.writeInt32(obj.f4);
  w.writeField('f5'); w.writeInt32(obj.f5);
  w.endObject();
}

final SpecCodec<Five08> Five08Codec = SpecCodec<Five08>(
  encode: (w, obj) => writeFive08(w, obj),
  decode: (r) {
    int f1Val = 0;
    int f2Val = 0;
    int f3Val = 0;
    int f4Val = 0;
    int f5Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readUint32(); break;
        case 'f2': f2Val = r.readUint32(); break;
        case 'f3': f3Val = r.readUint32(); break;
        case 'f4': f4Val = r.readInt32(); break;
        case 'f5': f5Val = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five08(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five09 {
  final double f1;
  final double f2;
  final int f3;
  final BigInt f4;
  final String f5;
  Five09({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive09(SpecWriter w, Five09 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeFloat32(obj.f1);
  w.writeField('f2'); w.writeFloat64(obj.f2);
  w.writeField('f3'); w.writeInt32(obj.f3);
  w.writeField('f4'); w.writeInt64(obj.f4);
  w.writeField('f5'); w.writeString(obj.f5);
  w.endObject();
}

final SpecCodec<Five09> Five09Codec = SpecCodec<Five09>(
  encode: (w, obj) => writeFive09(w, obj),
  decode: (r) {
    double f1Val = 0.0;
    double f2Val = 0.0;
    int f3Val = 0;
    BigInt f4Val = BigInt.zero;
    String f5Val = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readFloat32(); break;
        case 'f2': f2Val = r.readFloat64(); break;
        case 'f3': f3Val = r.readInt32(); break;
        case 'f4': f4Val = r.readInt64(); break;
        case 'f5': f5Val = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five09(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Five10 {
  final String f1;
  final bool f2;
  final BigInt f3;
  final BigInt f4;
  final double f5;
  Five10({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5});
}

void writeFive10(SpecWriter w, Five10 obj) {
  w.beginObject(5);
  w.writeField('f1'); w.writeString(obj.f1);
  w.writeField('f2'); w.writeBool(obj.f2);
  w.writeField('f3'); w.writeInt64(obj.f3);
  w.writeField('f4'); w.writeUint64(obj.f4);
  w.writeField('f5'); w.writeFloat64(obj.f5);
  w.endObject();
}

final SpecCodec<Five10> Five10Codec = SpecCodec<Five10>(
  encode: (w, obj) => writeFive10(w, obj),
  decode: (r) {
    String f1Val = '';
    bool f2Val = false;
    BigInt f3Val = BigInt.zero;
    BigInt f4Val = BigInt.zero;
    double f5Val = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readString(); break;
        case 'f2': f2Val = r.readBool(); break;
        case 'f3': f3Val = r.readInt64(); break;
        case 'f4': f4Val = r.readUint64(); break;
        case 'f5': f5Val = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Five10(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val);
  },
);

class Ten01 {
  final String f1;
  final bool f2;
  final int f3;
  final int f4;
  final int f5;
  final BigInt f6;
  final int f7;
  final int f8;
  final int f9;
  final BigInt f10;
  Ten01({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10});
}

void writeTen01(SpecWriter w, Ten01 obj) {
  w.beginObject(10);
  w.writeField('f1'); w.writeString(obj.f1);
  w.writeField('f2'); w.writeBool(obj.f2);
  w.writeField('f3'); w.writeInt32(obj.f3);
  w.writeField('f4'); w.writeInt32(obj.f4);
  w.writeField('f5'); w.writeInt32(obj.f5);
  w.writeField('f6'); w.writeInt64(obj.f6);
  w.writeField('f7'); w.writeUint32(obj.f7);
  w.writeField('f8'); w.writeUint32(obj.f8);
  w.writeField('f9'); w.writeUint32(obj.f9);
  w.writeField('f10'); w.writeUint64(obj.f10);
  w.endObject();
}

final SpecCodec<Ten01> Ten01Codec = SpecCodec<Ten01>(
  encode: (w, obj) => writeTen01(w, obj),
  decode: (r) {
    String f1Val = '';
    bool f2Val = false;
    int f3Val = 0;
    int f4Val = 0;
    int f5Val = 0;
    BigInt f6Val = BigInt.zero;
    int f7Val = 0;
    int f8Val = 0;
    int f9Val = 0;
    BigInt f10Val = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readString(); break;
        case 'f2': f2Val = r.readBool(); break;
        case 'f3': f3Val = r.readInt32(); break;
        case 'f4': f4Val = r.readInt32(); break;
        case 'f5': f5Val = r.readInt32(); break;
        case 'f6': f6Val = r.readInt64(); break;
        case 'f7': f7Val = r.readUint32(); break;
        case 'f8': f8Val = r.readUint32(); break;
        case 'f9': f9Val = r.readUint32(); break;
        case 'f10': f10Val = r.readUint64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Ten01(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val);
  },
);

class Ten02 {
  final int f1;
  final int f2;
  final BigInt f3;
  final int f4;
  final int f5;
  final int f6;
  final BigInt f7;
  final double f8;
  final double f9;
  final Uint8List f10;
  Ten02({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10});
}

void writeTen02(SpecWriter w, Ten02 obj) {
  w.beginObject(10);
  w.writeField('f1'); w.writeInt32(obj.f1);
  w.writeField('f2'); w.writeInt32(obj.f2);
  w.writeField('f3'); w.writeInt64(obj.f3);
  w.writeField('f4'); w.writeUint32(obj.f4);
  w.writeField('f5'); w.writeUint32(obj.f5);
  w.writeField('f6'); w.writeUint32(obj.f6);
  w.writeField('f7'); w.writeUint64(obj.f7);
  w.writeField('f8'); w.writeFloat32(obj.f8);
  w.writeField('f9'); w.writeFloat64(obj.f9);
  w.writeField('f10'); w.writeBytes(obj.f10);
  w.endObject();
}

final SpecCodec<Ten02> Ten02Codec = SpecCodec<Ten02>(
  encode: (w, obj) => writeTen02(w, obj),
  decode: (r) {
    int f1Val = 0;
    int f2Val = 0;
    BigInt f3Val = BigInt.zero;
    int f4Val = 0;
    int f5Val = 0;
    int f6Val = 0;
    BigInt f7Val = BigInt.zero;
    double f8Val = 0.0;
    double f9Val = 0.0;
    Uint8List f10Val = Uint8List(0);
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readInt32(); break;
        case 'f2': f2Val = r.readInt32(); break;
        case 'f3': f3Val = r.readInt64(); break;
        case 'f4': f4Val = r.readUint32(); break;
        case 'f5': f5Val = r.readUint32(); break;
        case 'f6': f6Val = r.readUint32(); break;
        case 'f7': f7Val = r.readUint64(); break;
        case 'f8': f8Val = r.readFloat32(); break;
        case 'f9': f9Val = r.readFloat64(); break;
        case 'f10': f10Val = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Ten02(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val);
  },
);

class Ten03 {
  final int f1;
  final int f2;
  final int f3;
  final BigInt f4;
  final double f5;
  final double f6;
  final Uint8List f7;
  final String f8;
  final bool f9;
  final int f10;
  Ten03({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10});
}

void writeTen03(SpecWriter w, Ten03 obj) {
  w.beginObject(10);
  w.writeField('f1'); w.writeUint32(obj.f1);
  w.writeField('f2'); w.writeUint32(obj.f2);
  w.writeField('f3'); w.writeUint32(obj.f3);
  w.writeField('f4'); w.writeUint64(obj.f4);
  w.writeField('f5'); w.writeFloat32(obj.f5);
  w.writeField('f6'); w.writeFloat64(obj.f6);
  w.writeField('f7'); w.writeBytes(obj.f7);
  w.writeField('f8'); w.writeString(obj.f8);
  w.writeField('f9'); w.writeBool(obj.f9);
  w.writeField('f10'); w.writeInt32(obj.f10);
  w.endObject();
}

final SpecCodec<Ten03> Ten03Codec = SpecCodec<Ten03>(
  encode: (w, obj) => writeTen03(w, obj),
  decode: (r) {
    int f1Val = 0;
    int f2Val = 0;
    int f3Val = 0;
    BigInt f4Val = BigInt.zero;
    double f5Val = 0.0;
    double f6Val = 0.0;
    Uint8List f7Val = Uint8List(0);
    String f8Val = '';
    bool f9Val = false;
    int f10Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readUint32(); break;
        case 'f2': f2Val = r.readUint32(); break;
        case 'f3': f3Val = r.readUint32(); break;
        case 'f4': f4Val = r.readUint64(); break;
        case 'f5': f5Val = r.readFloat32(); break;
        case 'f6': f6Val = r.readFloat64(); break;
        case 'f7': f7Val = r.readBytes(); break;
        case 'f8': f8Val = r.readString(); break;
        case 'f9': f9Val = r.readBool(); break;
        case 'f10': f10Val = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Ten03(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val);
  },
);

class Ten04 {
  final BigInt f1;
  final double f2;
  final double f3;
  final Uint8List f4;
  final String f5;
  final bool f6;
  final int f7;
  final int f8;
  final int f9;
  final BigInt f10;
  Ten04({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10});
}

void writeTen04(SpecWriter w, Ten04 obj) {
  w.beginObject(10);
  w.writeField('f1'); w.writeUint64(obj.f1);
  w.writeField('f2'); w.writeFloat32(obj.f2);
  w.writeField('f3'); w.writeFloat64(obj.f3);
  w.writeField('f4'); w.writeBytes(obj.f4);
  w.writeField('f5'); w.writeString(obj.f5);
  w.writeField('f6'); w.writeBool(obj.f6);
  w.writeField('f7'); w.writeInt32(obj.f7);
  w.writeField('f8'); w.writeInt32(obj.f8);
  w.writeField('f9'); w.writeInt32(obj.f9);
  w.writeField('f10'); w.writeInt64(obj.f10);
  w.endObject();
}

final SpecCodec<Ten04> Ten04Codec = SpecCodec<Ten04>(
  encode: (w, obj) => writeTen04(w, obj),
  decode: (r) {
    BigInt f1Val = BigInt.zero;
    double f2Val = 0.0;
    double f3Val = 0.0;
    Uint8List f4Val = Uint8List(0);
    String f5Val = '';
    bool f6Val = false;
    int f7Val = 0;
    int f8Val = 0;
    int f9Val = 0;
    BigInt f10Val = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readUint64(); break;
        case 'f2': f2Val = r.readFloat32(); break;
        case 'f3': f3Val = r.readFloat64(); break;
        case 'f4': f4Val = r.readBytes(); break;
        case 'f5': f5Val = r.readString(); break;
        case 'f6': f6Val = r.readBool(); break;
        case 'f7': f7Val = r.readInt32(); break;
        case 'f8': f8Val = r.readInt32(); break;
        case 'f9': f9Val = r.readInt32(); break;
        case 'f10': f10Val = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Ten04(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val);
  },
);

class Ten05 {
  final Uint8List f1;
  final String f2;
  final bool f3;
  final int f4;
  final int f5;
  final int f6;
  final BigInt f7;
  final int f8;
  final int f9;
  final int f10;
  Ten05({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10});
}

void writeTen05(SpecWriter w, Ten05 obj) {
  w.beginObject(10);
  w.writeField('f1'); w.writeBytes(obj.f1);
  w.writeField('f2'); w.writeString(obj.f2);
  w.writeField('f3'); w.writeBool(obj.f3);
  w.writeField('f4'); w.writeInt32(obj.f4);
  w.writeField('f5'); w.writeInt32(obj.f5);
  w.writeField('f6'); w.writeInt32(obj.f6);
  w.writeField('f7'); w.writeInt64(obj.f7);
  w.writeField('f8'); w.writeUint32(obj.f8);
  w.writeField('f9'); w.writeUint32(obj.f9);
  w.writeField('f10'); w.writeUint32(obj.f10);
  w.endObject();
}

final SpecCodec<Ten05> Ten05Codec = SpecCodec<Ten05>(
  encode: (w, obj) => writeTen05(w, obj),
  decode: (r) {
    Uint8List f1Val = Uint8List(0);
    String f2Val = '';
    bool f3Val = false;
    int f4Val = 0;
    int f5Val = 0;
    int f6Val = 0;
    BigInt f7Val = BigInt.zero;
    int f8Val = 0;
    int f9Val = 0;
    int f10Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readBytes(); break;
        case 'f2': f2Val = r.readString(); break;
        case 'f3': f3Val = r.readBool(); break;
        case 'f4': f4Val = r.readInt32(); break;
        case 'f5': f5Val = r.readInt32(); break;
        case 'f6': f6Val = r.readInt32(); break;
        case 'f7': f7Val = r.readInt64(); break;
        case 'f8': f8Val = r.readUint32(); break;
        case 'f9': f9Val = r.readUint32(); break;
        case 'f10': f10Val = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Ten05(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val);
  },
);
