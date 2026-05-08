library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class Wide20 {
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
  final double f11;
  final double f12;
  final Uint8List f13;
  final String f14;
  final bool f15;
  final int f16;
  final int f17;
  final int f18;
  final BigInt f19;
  final int f20;
  Wide20({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10, required this.f11, required this.f12, required this.f13, required this.f14, required this.f15, required this.f16, required this.f17, required this.f18, required this.f19, required this.f20});
}

void writeWide20(SpecWriter w, Wide20 obj) {
  w.beginObject(20);
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
  w.writeField('f11'); w.writeFloat32(obj.f11);
  w.writeField('f12'); w.writeFloat64(obj.f12);
  w.writeField('f13'); w.writeBytes(obj.f13);
  w.writeField('f14'); w.writeString(obj.f14);
  w.writeField('f15'); w.writeBool(obj.f15);
  w.writeField('f16'); w.writeInt32(obj.f16);
  w.writeField('f17'); w.writeInt32(obj.f17);
  w.writeField('f18'); w.writeInt32(obj.f18);
  w.writeField('f19'); w.writeInt64(obj.f19);
  w.writeField('f20'); w.writeUint32(obj.f20);
  w.endObject();
}

final SpecCodec<Wide20> Wide20Codec = SpecCodec<Wide20>(
  encode: (w, obj) => writeWide20(w, obj),
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
    double f11Val = 0.0;
    double f12Val = 0.0;
    Uint8List f13Val = Uint8List(0);
    String f14Val = '';
    bool f15Val = false;
    int f16Val = 0;
    int f17Val = 0;
    int f18Val = 0;
    BigInt f19Val = BigInt.zero;
    int f20Val = 0;
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
        case 'f11': f11Val = r.readFloat32(); break;
        case 'f12': f12Val = r.readFloat64(); break;
        case 'f13': f13Val = r.readBytes(); break;
        case 'f14': f14Val = r.readString(); break;
        case 'f15': f15Val = r.readBool(); break;
        case 'f16': f16Val = r.readInt32(); break;
        case 'f17': f17Val = r.readInt32(); break;
        case 'f18': f18Val = r.readInt32(); break;
        case 'f19': f19Val = r.readInt64(); break;
        case 'f20': f20Val = r.readUint32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Wide20(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val, f11: f11Val, f12: f12Val, f13: f13Val, f14: f14Val, f15: f15Val, f16: f16Val, f17: f17Val, f18: f18Val, f19: f19Val, f20: f20Val);
  },
);

class Wide25 {
  final int f1;
  final int f2;
  final BigInt f3;
  final double f4;
  final double f5;
  final Uint8List f6;
  final String f7;
  final bool f8;
  final int f9;
  final int f10;
  final int f11;
  final BigInt f12;
  final int f13;
  final int f14;
  final int f15;
  final BigInt f16;
  final double f17;
  final double f18;
  final Uint8List f19;
  final String f20;
  final bool f21;
  final int f22;
  final int f23;
  final int f24;
  final BigInt f25;
  Wide25({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10, required this.f11, required this.f12, required this.f13, required this.f14, required this.f15, required this.f16, required this.f17, required this.f18, required this.f19, required this.f20, required this.f21, required this.f22, required this.f23, required this.f24, required this.f25});
}

void writeWide25(SpecWriter w, Wide25 obj) {
  w.beginObject(25);
  w.writeField('f1'); w.writeUint32(obj.f1);
  w.writeField('f2'); w.writeUint32(obj.f2);
  w.writeField('f3'); w.writeUint64(obj.f3);
  w.writeField('f4'); w.writeFloat32(obj.f4);
  w.writeField('f5'); w.writeFloat64(obj.f5);
  w.writeField('f6'); w.writeBytes(obj.f6);
  w.writeField('f7'); w.writeString(obj.f7);
  w.writeField('f8'); w.writeBool(obj.f8);
  w.writeField('f9'); w.writeInt32(obj.f9);
  w.writeField('f10'); w.writeInt32(obj.f10);
  w.writeField('f11'); w.writeInt32(obj.f11);
  w.writeField('f12'); w.writeInt64(obj.f12);
  w.writeField('f13'); w.writeUint32(obj.f13);
  w.writeField('f14'); w.writeUint32(obj.f14);
  w.writeField('f15'); w.writeUint32(obj.f15);
  w.writeField('f16'); w.writeUint64(obj.f16);
  w.writeField('f17'); w.writeFloat32(obj.f17);
  w.writeField('f18'); w.writeFloat64(obj.f18);
  w.writeField('f19'); w.writeBytes(obj.f19);
  w.writeField('f20'); w.writeString(obj.f20);
  w.writeField('f21'); w.writeBool(obj.f21);
  w.writeField('f22'); w.writeInt32(obj.f22);
  w.writeField('f23'); w.writeInt32(obj.f23);
  w.writeField('f24'); w.writeInt32(obj.f24);
  w.writeField('f25'); w.writeInt64(obj.f25);
  w.endObject();
}

final SpecCodec<Wide25> Wide25Codec = SpecCodec<Wide25>(
  encode: (w, obj) => writeWide25(w, obj),
  decode: (r) {
    int f1Val = 0;
    int f2Val = 0;
    BigInt f3Val = BigInt.zero;
    double f4Val = 0.0;
    double f5Val = 0.0;
    Uint8List f6Val = Uint8List(0);
    String f7Val = '';
    bool f8Val = false;
    int f9Val = 0;
    int f10Val = 0;
    int f11Val = 0;
    BigInt f12Val = BigInt.zero;
    int f13Val = 0;
    int f14Val = 0;
    int f15Val = 0;
    BigInt f16Val = BigInt.zero;
    double f17Val = 0.0;
    double f18Val = 0.0;
    Uint8List f19Val = Uint8List(0);
    String f20Val = '';
    bool f21Val = false;
    int f22Val = 0;
    int f23Val = 0;
    int f24Val = 0;
    BigInt f25Val = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readUint32(); break;
        case 'f2': f2Val = r.readUint32(); break;
        case 'f3': f3Val = r.readUint64(); break;
        case 'f4': f4Val = r.readFloat32(); break;
        case 'f5': f5Val = r.readFloat64(); break;
        case 'f6': f6Val = r.readBytes(); break;
        case 'f7': f7Val = r.readString(); break;
        case 'f8': f8Val = r.readBool(); break;
        case 'f9': f9Val = r.readInt32(); break;
        case 'f10': f10Val = r.readInt32(); break;
        case 'f11': f11Val = r.readInt32(); break;
        case 'f12': f12Val = r.readInt64(); break;
        case 'f13': f13Val = r.readUint32(); break;
        case 'f14': f14Val = r.readUint32(); break;
        case 'f15': f15Val = r.readUint32(); break;
        case 'f16': f16Val = r.readUint64(); break;
        case 'f17': f17Val = r.readFloat32(); break;
        case 'f18': f18Val = r.readFloat64(); break;
        case 'f19': f19Val = r.readBytes(); break;
        case 'f20': f20Val = r.readString(); break;
        case 'f21': f21Val = r.readBool(); break;
        case 'f22': f22Val = r.readInt32(); break;
        case 'f23': f23Val = r.readInt32(); break;
        case 'f24': f24Val = r.readInt32(); break;
        case 'f25': f25Val = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Wide25(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val, f11: f11Val, f12: f12Val, f13: f13Val, f14: f14Val, f15: f15Val, f16: f16Val, f17: f17Val, f18: f18Val, f19: f19Val, f20: f20Val, f21: f21Val, f22: f22Val, f23: f23Val, f24: f24Val, f25: f25Val);
  },
);

class Wide30 {
  final bool f1;
  final int f2;
  final int f3;
  final int f4;
  final BigInt f5;
  final int f6;
  final int f7;
  final int f8;
  final BigInt f9;
  final double f10;
  final double f11;
  final Uint8List f12;
  final String f13;
  final bool f14;
  final int f15;
  final int f16;
  final int f17;
  final BigInt f18;
  final int f19;
  final int f20;
  final int f21;
  final BigInt f22;
  final double f23;
  final double f24;
  final Uint8List f25;
  final String f26;
  final bool f27;
  final int f28;
  final int f29;
  final int f30;
  Wide30({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10, required this.f11, required this.f12, required this.f13, required this.f14, required this.f15, required this.f16, required this.f17, required this.f18, required this.f19, required this.f20, required this.f21, required this.f22, required this.f23, required this.f24, required this.f25, required this.f26, required this.f27, required this.f28, required this.f29, required this.f30});
}

void writeWide30(SpecWriter w, Wide30 obj) {
  w.beginObject(30);
  w.writeField('f1'); w.writeBool(obj.f1);
  w.writeField('f2'); w.writeInt32(obj.f2);
  w.writeField('f3'); w.writeInt32(obj.f3);
  w.writeField('f4'); w.writeInt32(obj.f4);
  w.writeField('f5'); w.writeInt64(obj.f5);
  w.writeField('f6'); w.writeUint32(obj.f6);
  w.writeField('f7'); w.writeUint32(obj.f7);
  w.writeField('f8'); w.writeUint32(obj.f8);
  w.writeField('f9'); w.writeUint64(obj.f9);
  w.writeField('f10'); w.writeFloat32(obj.f10);
  w.writeField('f11'); w.writeFloat64(obj.f11);
  w.writeField('f12'); w.writeBytes(obj.f12);
  w.writeField('f13'); w.writeString(obj.f13);
  w.writeField('f14'); w.writeBool(obj.f14);
  w.writeField('f15'); w.writeInt32(obj.f15);
  w.writeField('f16'); w.writeInt32(obj.f16);
  w.writeField('f17'); w.writeInt32(obj.f17);
  w.writeField('f18'); w.writeInt64(obj.f18);
  w.writeField('f19'); w.writeUint32(obj.f19);
  w.writeField('f20'); w.writeUint32(obj.f20);
  w.writeField('f21'); w.writeUint32(obj.f21);
  w.writeField('f22'); w.writeUint64(obj.f22);
  w.writeField('f23'); w.writeFloat32(obj.f23);
  w.writeField('f24'); w.writeFloat64(obj.f24);
  w.writeField('f25'); w.writeBytes(obj.f25);
  w.writeField('f26'); w.writeString(obj.f26);
  w.writeField('f27'); w.writeBool(obj.f27);
  w.writeField('f28'); w.writeInt32(obj.f28);
  w.writeField('f29'); w.writeInt32(obj.f29);
  w.writeField('f30'); w.writeInt32(obj.f30);
  w.endObject();
}

final SpecCodec<Wide30> Wide30Codec = SpecCodec<Wide30>(
  encode: (w, obj) => writeWide30(w, obj),
  decode: (r) {
    bool f1Val = false;
    int f2Val = 0;
    int f3Val = 0;
    int f4Val = 0;
    BigInt f5Val = BigInt.zero;
    int f6Val = 0;
    int f7Val = 0;
    int f8Val = 0;
    BigInt f9Val = BigInt.zero;
    double f10Val = 0.0;
    double f11Val = 0.0;
    Uint8List f12Val = Uint8List(0);
    String f13Val = '';
    bool f14Val = false;
    int f15Val = 0;
    int f16Val = 0;
    int f17Val = 0;
    BigInt f18Val = BigInt.zero;
    int f19Val = 0;
    int f20Val = 0;
    int f21Val = 0;
    BigInt f22Val = BigInt.zero;
    double f23Val = 0.0;
    double f24Val = 0.0;
    Uint8List f25Val = Uint8List(0);
    String f26Val = '';
    bool f27Val = false;
    int f28Val = 0;
    int f29Val = 0;
    int f30Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readBool(); break;
        case 'f2': f2Val = r.readInt32(); break;
        case 'f3': f3Val = r.readInt32(); break;
        case 'f4': f4Val = r.readInt32(); break;
        case 'f5': f5Val = r.readInt64(); break;
        case 'f6': f6Val = r.readUint32(); break;
        case 'f7': f7Val = r.readUint32(); break;
        case 'f8': f8Val = r.readUint32(); break;
        case 'f9': f9Val = r.readUint64(); break;
        case 'f10': f10Val = r.readFloat32(); break;
        case 'f11': f11Val = r.readFloat64(); break;
        case 'f12': f12Val = r.readBytes(); break;
        case 'f13': f13Val = r.readString(); break;
        case 'f14': f14Val = r.readBool(); break;
        case 'f15': f15Val = r.readInt32(); break;
        case 'f16': f16Val = r.readInt32(); break;
        case 'f17': f17Val = r.readInt32(); break;
        case 'f18': f18Val = r.readInt64(); break;
        case 'f19': f19Val = r.readUint32(); break;
        case 'f20': f20Val = r.readUint32(); break;
        case 'f21': f21Val = r.readUint32(); break;
        case 'f22': f22Val = r.readUint64(); break;
        case 'f23': f23Val = r.readFloat32(); break;
        case 'f24': f24Val = r.readFloat64(); break;
        case 'f25': f25Val = r.readBytes(); break;
        case 'f26': f26Val = r.readString(); break;
        case 'f27': f27Val = r.readBool(); break;
        case 'f28': f28Val = r.readInt32(); break;
        case 'f29': f29Val = r.readInt32(); break;
        case 'f30': f30Val = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Wide30(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val, f11: f11Val, f12: f12Val, f13: f13Val, f14: f14Val, f15: f15Val, f16: f16Val, f17: f17Val, f18: f18Val, f19: f19Val, f20: f20Val, f21: f21Val, f22: f22Val, f23: f23Val, f24: f24Val, f25: f25Val, f26: f26Val, f27: f27Val, f28: f28Val, f29: f29Val, f30: f30Val);
  },
);

class Wide35 {
  final int f1;
  final BigInt f2;
  final double f3;
  final double f4;
  final Uint8List f5;
  final String f6;
  final bool f7;
  final int f8;
  final int f9;
  final int f10;
  final BigInt f11;
  final int f12;
  final int f13;
  final int f14;
  final BigInt f15;
  final double f16;
  final double f17;
  final Uint8List f18;
  final String f19;
  final bool f20;
  final int f21;
  final int f22;
  final int f23;
  final BigInt f24;
  final int f25;
  final int f26;
  final int f27;
  final BigInt f28;
  final double f29;
  final double f30;
  final Uint8List f31;
  final String f32;
  final bool f33;
  final int f34;
  final int f35;
  Wide35({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10, required this.f11, required this.f12, required this.f13, required this.f14, required this.f15, required this.f16, required this.f17, required this.f18, required this.f19, required this.f20, required this.f21, required this.f22, required this.f23, required this.f24, required this.f25, required this.f26, required this.f27, required this.f28, required this.f29, required this.f30, required this.f31, required this.f32, required this.f33, required this.f34, required this.f35});
}

void writeWide35(SpecWriter w, Wide35 obj) {
  w.beginObject(35);
  w.writeField('f1'); w.writeUint32(obj.f1);
  w.writeField('f2'); w.writeUint64(obj.f2);
  w.writeField('f3'); w.writeFloat32(obj.f3);
  w.writeField('f4'); w.writeFloat64(obj.f4);
  w.writeField('f5'); w.writeBytes(obj.f5);
  w.writeField('f6'); w.writeString(obj.f6);
  w.writeField('f7'); w.writeBool(obj.f7);
  w.writeField('f8'); w.writeInt32(obj.f8);
  w.writeField('f9'); w.writeInt32(obj.f9);
  w.writeField('f10'); w.writeInt32(obj.f10);
  w.writeField('f11'); w.writeInt64(obj.f11);
  w.writeField('f12'); w.writeUint32(obj.f12);
  w.writeField('f13'); w.writeUint32(obj.f13);
  w.writeField('f14'); w.writeUint32(obj.f14);
  w.writeField('f15'); w.writeUint64(obj.f15);
  w.writeField('f16'); w.writeFloat32(obj.f16);
  w.writeField('f17'); w.writeFloat64(obj.f17);
  w.writeField('f18'); w.writeBytes(obj.f18);
  w.writeField('f19'); w.writeString(obj.f19);
  w.writeField('f20'); w.writeBool(obj.f20);
  w.writeField('f21'); w.writeInt32(obj.f21);
  w.writeField('f22'); w.writeInt32(obj.f22);
  w.writeField('f23'); w.writeInt32(obj.f23);
  w.writeField('f24'); w.writeInt64(obj.f24);
  w.writeField('f25'); w.writeUint32(obj.f25);
  w.writeField('f26'); w.writeUint32(obj.f26);
  w.writeField('f27'); w.writeUint32(obj.f27);
  w.writeField('f28'); w.writeUint64(obj.f28);
  w.writeField('f29'); w.writeFloat32(obj.f29);
  w.writeField('f30'); w.writeFloat64(obj.f30);
  w.writeField('f31'); w.writeBytes(obj.f31);
  w.writeField('f32'); w.writeString(obj.f32);
  w.writeField('f33'); w.writeBool(obj.f33);
  w.writeField('f34'); w.writeInt32(obj.f34);
  w.writeField('f35'); w.writeInt32(obj.f35);
  w.endObject();
}

final SpecCodec<Wide35> Wide35Codec = SpecCodec<Wide35>(
  encode: (w, obj) => writeWide35(w, obj),
  decode: (r) {
    int f1Val = 0;
    BigInt f2Val = BigInt.zero;
    double f3Val = 0.0;
    double f4Val = 0.0;
    Uint8List f5Val = Uint8List(0);
    String f6Val = '';
    bool f7Val = false;
    int f8Val = 0;
    int f9Val = 0;
    int f10Val = 0;
    BigInt f11Val = BigInt.zero;
    int f12Val = 0;
    int f13Val = 0;
    int f14Val = 0;
    BigInt f15Val = BigInt.zero;
    double f16Val = 0.0;
    double f17Val = 0.0;
    Uint8List f18Val = Uint8List(0);
    String f19Val = '';
    bool f20Val = false;
    int f21Val = 0;
    int f22Val = 0;
    int f23Val = 0;
    BigInt f24Val = BigInt.zero;
    int f25Val = 0;
    int f26Val = 0;
    int f27Val = 0;
    BigInt f28Val = BigInt.zero;
    double f29Val = 0.0;
    double f30Val = 0.0;
    Uint8List f31Val = Uint8List(0);
    String f32Val = '';
    bool f33Val = false;
    int f34Val = 0;
    int f35Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readUint32(); break;
        case 'f2': f2Val = r.readUint64(); break;
        case 'f3': f3Val = r.readFloat32(); break;
        case 'f4': f4Val = r.readFloat64(); break;
        case 'f5': f5Val = r.readBytes(); break;
        case 'f6': f6Val = r.readString(); break;
        case 'f7': f7Val = r.readBool(); break;
        case 'f8': f8Val = r.readInt32(); break;
        case 'f9': f9Val = r.readInt32(); break;
        case 'f10': f10Val = r.readInt32(); break;
        case 'f11': f11Val = r.readInt64(); break;
        case 'f12': f12Val = r.readUint32(); break;
        case 'f13': f13Val = r.readUint32(); break;
        case 'f14': f14Val = r.readUint32(); break;
        case 'f15': f15Val = r.readUint64(); break;
        case 'f16': f16Val = r.readFloat32(); break;
        case 'f17': f17Val = r.readFloat64(); break;
        case 'f18': f18Val = r.readBytes(); break;
        case 'f19': f19Val = r.readString(); break;
        case 'f20': f20Val = r.readBool(); break;
        case 'f21': f21Val = r.readInt32(); break;
        case 'f22': f22Val = r.readInt32(); break;
        case 'f23': f23Val = r.readInt32(); break;
        case 'f24': f24Val = r.readInt64(); break;
        case 'f25': f25Val = r.readUint32(); break;
        case 'f26': f26Val = r.readUint32(); break;
        case 'f27': f27Val = r.readUint32(); break;
        case 'f28': f28Val = r.readUint64(); break;
        case 'f29': f29Val = r.readFloat32(); break;
        case 'f30': f30Val = r.readFloat64(); break;
        case 'f31': f31Val = r.readBytes(); break;
        case 'f32': f32Val = r.readString(); break;
        case 'f33': f33Val = r.readBool(); break;
        case 'f34': f34Val = r.readInt32(); break;
        case 'f35': f35Val = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Wide35(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val, f11: f11Val, f12: f12Val, f13: f13Val, f14: f14Val, f15: f15Val, f16: f16Val, f17: f17Val, f18: f18Val, f19: f19Val, f20: f20Val, f21: f21Val, f22: f22Val, f23: f23Val, f24: f24Val, f25: f25Val, f26: f26Val, f27: f27Val, f28: f28Val, f29: f29Val, f30: f30Val, f31: f31Val, f32: f32Val, f33: f33Val, f34: f34Val, f35: f35Val);
  },
);

class Wide40 {
  final int f1;
  final int f2;
  final int f3;
  final BigInt f4;
  final int f5;
  final int f6;
  final int f7;
  final BigInt f8;
  final double f9;
  final double f10;
  final Uint8List f11;
  final String f12;
  final bool f13;
  final int f14;
  final int f15;
  final int f16;
  final BigInt f17;
  final int f18;
  final int f19;
  final int f20;
  final BigInt f21;
  final double f22;
  final double f23;
  final Uint8List f24;
  final String f25;
  final bool f26;
  final int f27;
  final int f28;
  final int f29;
  final BigInt f30;
  final int f31;
  final int f32;
  final int f33;
  final BigInt f34;
  final double f35;
  final double f36;
  final Uint8List f37;
  final String f38;
  final bool f39;
  final int f40;
  Wide40({required this.f1, required this.f2, required this.f3, required this.f4, required this.f5, required this.f6, required this.f7, required this.f8, required this.f9, required this.f10, required this.f11, required this.f12, required this.f13, required this.f14, required this.f15, required this.f16, required this.f17, required this.f18, required this.f19, required this.f20, required this.f21, required this.f22, required this.f23, required this.f24, required this.f25, required this.f26, required this.f27, required this.f28, required this.f29, required this.f30, required this.f31, required this.f32, required this.f33, required this.f34, required this.f35, required this.f36, required this.f37, required this.f38, required this.f39, required this.f40});
}

void writeWide40(SpecWriter w, Wide40 obj) {
  w.beginObject(40);
  w.writeField('f1'); w.writeInt32(obj.f1);
  w.writeField('f2'); w.writeInt32(obj.f2);
  w.writeField('f3'); w.writeInt32(obj.f3);
  w.writeField('f4'); w.writeInt64(obj.f4);
  w.writeField('f5'); w.writeUint32(obj.f5);
  w.writeField('f6'); w.writeUint32(obj.f6);
  w.writeField('f7'); w.writeUint32(obj.f7);
  w.writeField('f8'); w.writeUint64(obj.f8);
  w.writeField('f9'); w.writeFloat32(obj.f9);
  w.writeField('f10'); w.writeFloat64(obj.f10);
  w.writeField('f11'); w.writeBytes(obj.f11);
  w.writeField('f12'); w.writeString(obj.f12);
  w.writeField('f13'); w.writeBool(obj.f13);
  w.writeField('f14'); w.writeInt32(obj.f14);
  w.writeField('f15'); w.writeInt32(obj.f15);
  w.writeField('f16'); w.writeInt32(obj.f16);
  w.writeField('f17'); w.writeInt64(obj.f17);
  w.writeField('f18'); w.writeUint32(obj.f18);
  w.writeField('f19'); w.writeUint32(obj.f19);
  w.writeField('f20'); w.writeUint32(obj.f20);
  w.writeField('f21'); w.writeUint64(obj.f21);
  w.writeField('f22'); w.writeFloat32(obj.f22);
  w.writeField('f23'); w.writeFloat64(obj.f23);
  w.writeField('f24'); w.writeBytes(obj.f24);
  w.writeField('f25'); w.writeString(obj.f25);
  w.writeField('f26'); w.writeBool(obj.f26);
  w.writeField('f27'); w.writeInt32(obj.f27);
  w.writeField('f28'); w.writeInt32(obj.f28);
  w.writeField('f29'); w.writeInt32(obj.f29);
  w.writeField('f30'); w.writeInt64(obj.f30);
  w.writeField('f31'); w.writeUint32(obj.f31);
  w.writeField('f32'); w.writeUint32(obj.f32);
  w.writeField('f33'); w.writeUint32(obj.f33);
  w.writeField('f34'); w.writeUint64(obj.f34);
  w.writeField('f35'); w.writeFloat32(obj.f35);
  w.writeField('f36'); w.writeFloat64(obj.f36);
  w.writeField('f37'); w.writeBytes(obj.f37);
  w.writeField('f38'); w.writeString(obj.f38);
  w.writeField('f39'); w.writeBool(obj.f39);
  w.writeField('f40'); w.writeInt32(obj.f40);
  w.endObject();
}

final SpecCodec<Wide40> Wide40Codec = SpecCodec<Wide40>(
  encode: (w, obj) => writeWide40(w, obj),
  decode: (r) {
    int f1Val = 0;
    int f2Val = 0;
    int f3Val = 0;
    BigInt f4Val = BigInt.zero;
    int f5Val = 0;
    int f6Val = 0;
    int f7Val = 0;
    BigInt f8Val = BigInt.zero;
    double f9Val = 0.0;
    double f10Val = 0.0;
    Uint8List f11Val = Uint8List(0);
    String f12Val = '';
    bool f13Val = false;
    int f14Val = 0;
    int f15Val = 0;
    int f16Val = 0;
    BigInt f17Val = BigInt.zero;
    int f18Val = 0;
    int f19Val = 0;
    int f20Val = 0;
    BigInt f21Val = BigInt.zero;
    double f22Val = 0.0;
    double f23Val = 0.0;
    Uint8List f24Val = Uint8List(0);
    String f25Val = '';
    bool f26Val = false;
    int f27Val = 0;
    int f28Val = 0;
    int f29Val = 0;
    BigInt f30Val = BigInt.zero;
    int f31Val = 0;
    int f32Val = 0;
    int f33Val = 0;
    BigInt f34Val = BigInt.zero;
    double f35Val = 0.0;
    double f36Val = 0.0;
    Uint8List f37Val = Uint8List(0);
    String f38Val = '';
    bool f39Val = false;
    int f40Val = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'f1': f1Val = r.readInt32(); break;
        case 'f2': f2Val = r.readInt32(); break;
        case 'f3': f3Val = r.readInt32(); break;
        case 'f4': f4Val = r.readInt64(); break;
        case 'f5': f5Val = r.readUint32(); break;
        case 'f6': f6Val = r.readUint32(); break;
        case 'f7': f7Val = r.readUint32(); break;
        case 'f8': f8Val = r.readUint64(); break;
        case 'f9': f9Val = r.readFloat32(); break;
        case 'f10': f10Val = r.readFloat64(); break;
        case 'f11': f11Val = r.readBytes(); break;
        case 'f12': f12Val = r.readString(); break;
        case 'f13': f13Val = r.readBool(); break;
        case 'f14': f14Val = r.readInt32(); break;
        case 'f15': f15Val = r.readInt32(); break;
        case 'f16': f16Val = r.readInt32(); break;
        case 'f17': f17Val = r.readInt64(); break;
        case 'f18': f18Val = r.readUint32(); break;
        case 'f19': f19Val = r.readUint32(); break;
        case 'f20': f20Val = r.readUint32(); break;
        case 'f21': f21Val = r.readUint64(); break;
        case 'f22': f22Val = r.readFloat32(); break;
        case 'f23': f23Val = r.readFloat64(); break;
        case 'f24': f24Val = r.readBytes(); break;
        case 'f25': f25Val = r.readString(); break;
        case 'f26': f26Val = r.readBool(); break;
        case 'f27': f27Val = r.readInt32(); break;
        case 'f28': f28Val = r.readInt32(); break;
        case 'f29': f29Val = r.readInt32(); break;
        case 'f30': f30Val = r.readInt64(); break;
        case 'f31': f31Val = r.readUint32(); break;
        case 'f32': f32Val = r.readUint32(); break;
        case 'f33': f33Val = r.readUint32(); break;
        case 'f34': f34Val = r.readUint64(); break;
        case 'f35': f35Val = r.readFloat32(); break;
        case 'f36': f36Val = r.readFloat64(); break;
        case 'f37': f37Val = r.readBytes(); break;
        case 'f38': f38Val = r.readString(); break;
        case 'f39': f39Val = r.readBool(); break;
        case 'f40': f40Val = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Wide40(f1: f1Val, f2: f2Val, f3: f3Val, f4: f4Val, f5: f5Val, f6: f6Val, f7: f7Val, f8: f8Val, f9: f9Val, f10: f10Val, f11: f11Val, f12: f12Val, f13: f13Val, f14: f14Val, f15: f15Val, f16: f16Val, f17: f17Val, f18: f18Val, f19: f19Val, f20: f20Val, f21: f21Val, f22: f22Val, f23: f23Val, f24: f24Val, f25: f25Val, f26: f26Val, f27: f27Val, f28: f28Val, f29: f29Val, f30: f30Val, f31: f31Val, f32: f32Val, f33: f33Val, f34: f34Val, f35: f35Val, f36: f36Val, f37: f37Val, f38: f38Val, f39: f39Val, f40: f40Val);
  },
);
