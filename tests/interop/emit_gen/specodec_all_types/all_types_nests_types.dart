library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class NestInner {
  final Inner nested;
  NestInner({required this.nested});
}

void writeNestInner(SpecWriter w, NestInner obj) {
  w.beginObject(1);
  w.writeField('nested'); InnerCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestInner> NestInnerCodec = SpecCodec<NestInner>(
  encode: (w, obj) => writeNestInner(w, obj),
  decode: (r) {
    late Inner nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = InnerCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestInner(nested: nestedVal);
  },
);

class NestCoord {
  final Coord nested;
  NestCoord({required this.nested});
}

void writeNestCoord(SpecWriter w, NestCoord obj) {
  w.beginObject(1);
  w.writeField('nested'); CoordCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestCoord> NestCoordCodec = SpecCodec<NestCoord>(
  encode: (w, obj) => writeNestCoord(w, obj),
  decode: (r) {
    late Coord nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = CoordCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestCoord(nested: nestedVal);
  },
);

class NestIdVal {
  final IdVal nested;
  NestIdVal({required this.nested});
}

void writeNestIdVal(SpecWriter w, NestIdVal obj) {
  w.beginObject(1);
  w.writeField('nested'); IdValCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestIdVal> NestIdValCodec = SpecCodec<NestIdVal>(
  encode: (w, obj) => writeNestIdVal(w, obj),
  decode: (r) {
    late IdVal nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = IdValCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestIdVal(nested: nestedVal);
  },
);

class NestLabel {
  final Label nested;
  NestLabel({required this.nested});
}

void writeNestLabel(SpecWriter w, NestLabel obj) {
  w.beginObject(1);
  w.writeField('nested'); LabelCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestLabel> NestLabelCodec = SpecCodec<NestLabel>(
  encode: (w, obj) => writeNestLabel(w, obj),
  decode: (r) {
    late Label nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = LabelCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestLabel(nested: nestedVal);
  },
);

class NestMoney {
  final Money nested;
  NestMoney({required this.nested});
}

void writeNestMoney(SpecWriter w, NestMoney obj) {
  w.beginObject(1);
  w.writeField('nested'); MoneyCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestMoney> NestMoneyCodec = SpecCodec<NestMoney>(
  encode: (w, obj) => writeNestMoney(w, obj),
  decode: (r) {
    late Money nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = MoneyCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestMoney(nested: nestedVal);
  },
);

class NestRange32 {
  final Range32 nested;
  NestRange32({required this.nested});
}

void writeNestRange32(SpecWriter w, NestRange32 obj) {
  w.beginObject(1);
  w.writeField('nested'); Range32Codec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestRange32> NestRange32Codec = SpecCodec<NestRange32>(
  encode: (w, obj) => writeNestRange32(w, obj),
  decode: (r) {
    late Range32 nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = Range32Codec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestRange32(nested: nestedVal);
  },
);

class NestAddr {
  final Addr nested;
  NestAddr({required this.nested});
}

void writeNestAddr(SpecWriter w, NestAddr obj) {
  w.beginObject(1);
  w.writeField('nested'); AddrCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestAddr> NestAddrCodec = SpecCodec<NestAddr>(
  encode: (w, obj) => writeNestAddr(w, obj),
  decode: (r) {
    late Addr nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = AddrCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestAddr(nested: nestedVal);
  },
);

class NestPoint3 {
  final Point3 nested;
  NestPoint3({required this.nested});
}

void writeNestPoint3(SpecWriter w, NestPoint3 obj) {
  w.beginObject(1);
  w.writeField('nested'); Point3Codec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestPoint3> NestPoint3Codec = SpecCodec<NestPoint3>(
  encode: (w, obj) => writeNestPoint3(w, obj),
  decode: (r) {
    late Point3 nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'nested': nestedVal = Point3Codec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestPoint3(nested: nestedVal);
  },
);

class OptNestInner {
  final String label;
  final Inner? nested;
  OptNestInner({required this.label, this.nested});
}

void writeOptNestInner(SpecWriter w, OptNestInner obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); InnerCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestInner> OptNestInnerCodec = SpecCodec<OptNestInner>(
  encode: (w, obj) => writeOptNestInner(w, obj),
  decode: (r) {
    String labelVal = '';
    Inner? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : InnerCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestInner(label: labelVal, nested: nestedVal);
  },
);

class OptNestCoord {
  final String label;
  final Coord? nested;
  OptNestCoord({required this.label, this.nested});
}

void writeOptNestCoord(SpecWriter w, OptNestCoord obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); CoordCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestCoord> OptNestCoordCodec = SpecCodec<OptNestCoord>(
  encode: (w, obj) => writeOptNestCoord(w, obj),
  decode: (r) {
    String labelVal = '';
    Coord? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : CoordCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestCoord(label: labelVal, nested: nestedVal);
  },
);

class OptNestIdVal {
  final String label;
  final IdVal? nested;
  OptNestIdVal({required this.label, this.nested});
}

void writeOptNestIdVal(SpecWriter w, OptNestIdVal obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); IdValCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestIdVal> OptNestIdValCodec = SpecCodec<OptNestIdVal>(
  encode: (w, obj) => writeOptNestIdVal(w, obj),
  decode: (r) {
    String labelVal = '';
    IdVal? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : IdValCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestIdVal(label: labelVal, nested: nestedVal);
  },
);

class OptNestLabel {
  final String label;
  final Label? nested;
  OptNestLabel({required this.label, this.nested});
}

void writeOptNestLabel(SpecWriter w, OptNestLabel obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); LabelCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestLabel> OptNestLabelCodec = SpecCodec<OptNestLabel>(
  encode: (w, obj) => writeOptNestLabel(w, obj),
  decode: (r) {
    String labelVal = '';
    Label? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : LabelCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestLabel(label: labelVal, nested: nestedVal);
  },
);

class OptNestMoney {
  final String label;
  final Money? nested;
  OptNestMoney({required this.label, this.nested});
}

void writeOptNestMoney(SpecWriter w, OptNestMoney obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); MoneyCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestMoney> OptNestMoneyCodec = SpecCodec<OptNestMoney>(
  encode: (w, obj) => writeOptNestMoney(w, obj),
  decode: (r) {
    String labelVal = '';
    Money? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : MoneyCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestMoney(label: labelVal, nested: nestedVal);
  },
);

class OptNestRange32 {
  final String label;
  final Range32? nested;
  OptNestRange32({required this.label, this.nested});
}

void writeOptNestRange32(SpecWriter w, OptNestRange32 obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); Range32Codec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestRange32> OptNestRange32Codec = SpecCodec<OptNestRange32>(
  encode: (w, obj) => writeOptNestRange32(w, obj),
  decode: (r) {
    String labelVal = '';
    Range32? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : Range32Codec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestRange32(label: labelVal, nested: nestedVal);
  },
);

class OptNestAddr {
  final String label;
  final Addr? nested;
  OptNestAddr({required this.label, this.nested});
}

void writeOptNestAddr(SpecWriter w, OptNestAddr obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); AddrCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestAddr> OptNestAddrCodec = SpecCodec<OptNestAddr>(
  encode: (w, obj) => writeOptNestAddr(w, obj),
  decode: (r) {
    String labelVal = '';
    Addr? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : AddrCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestAddr(label: labelVal, nested: nestedVal);
  },
);

class OptNestPoint3 {
  final String label;
  final Point3? nested;
  OptNestPoint3({required this.label, this.nested});
}

void writeOptNestPoint3(SpecWriter w, OptNestPoint3 obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('label'); w.writeString(obj.label);
  if (obj.nested != null) { w.writeField('nested'); Point3Codec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<OptNestPoint3> OptNestPoint3Codec = SpecCodec<OptNestPoint3>(
  encode: (w, obj) => writeOptNestPoint3(w, obj),
  decode: (r) {
    String labelVal = '';
    Point3? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : Point3Codec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptNestPoint3(label: labelVal, nested: nestedVal);
  },
);
