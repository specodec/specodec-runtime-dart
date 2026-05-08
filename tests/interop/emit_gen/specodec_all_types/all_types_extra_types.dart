library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class OptArr1 {
  final String req;
  final List<int>? items;
  OptArr1({required this.req, this.items});
}

void writeOptArr1(SpecWriter w, OptArr1 obj) {
  var fieldCount = 1;
  if (obj.items != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('req'); w.writeString(obj.req);
  if (obj.items != null) { w.writeField('items'); w.beginArray(obj.items!.length); for (final item in obj.items!) { w.nextElement(); w.writeInt32(item); } w.endArray(); }
  w.endObject();
}

final SpecCodec<OptArr1> OptArr1Codec = SpecCodec<OptArr1>(
  encode: (w, obj) => writeOptArr1(w, obj),
  decode: (r) {
    String reqVal = '';
    List<int>? itemsVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'req': reqVal = r.readString(); break;
        case 'items': itemsVal = () { final list = <int>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt32()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptArr1(req: reqVal, items: itemsVal);
  },
);

class OptArr2 {
  final int id;
  final List<String>? names;
  final List<bool>? flags;
  OptArr2({required this.id, this.names, this.flags});
}

void writeOptArr2(SpecWriter w, OptArr2 obj) {
  var fieldCount = 1;
  if (obj.names != null) fieldCount++;
  if (obj.flags != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('id'); w.writeInt32(obj.id);
  if (obj.names != null) { w.writeField('names'); w.beginArray(obj.names!.length); for (final item in obj.names!) { w.nextElement(); w.writeString(item); } w.endArray(); }
  if (obj.flags != null) { w.writeField('flags'); w.beginArray(obj.flags!.length); for (final item in obj.flags!) { w.nextElement(); w.writeBool(item); } w.endArray(); }
  w.endObject();
}

final SpecCodec<OptArr2> OptArr2Codec = SpecCodec<OptArr2>(
  encode: (w, obj) => writeOptArr2(w, obj),
  decode: (r) {
    int idVal = 0;
    List<String>? namesVal;
    List<bool>? flagsVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'id': idVal = r.readInt32(); break;
        case 'names': namesVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        case 'flags': flagsVal = () { final list = <bool>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readBool()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptArr2(id: idVal, names: namesVal, flags: flagsVal);
  },
);

class OptArr3 {
  final List<String>? a;
  final List<double>? b;
  OptArr3({this.a, this.b});
}

void writeOptArr3(SpecWriter w, OptArr3 obj) {
  var fieldCount = 0;
  if (obj.a != null) fieldCount++;
  if (obj.b != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.a != null) { w.writeField('a'); w.beginArray(obj.a!.length); for (final item in obj.a!) { w.nextElement(); w.writeString(item); } w.endArray(); }
  if (obj.b != null) { w.writeField('b'); w.beginArray(obj.b!.length); for (final item in obj.b!) { w.nextElement(); w.writeFloat64(item); } w.endArray(); }
  w.endObject();
}

final SpecCodec<OptArr3> OptArr3Codec = SpecCodec<OptArr3>(
  encode: (w, obj) => writeOptArr3(w, obj),
  decode: (r) {
    List<String>? aVal;
    List<double>? bVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        case 'b': bVal = () { final list = <double>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readFloat64()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptArr3(a: aVal, b: bVal);
  },
);

class OptArr4 {
  final Uint8List payload;
  final List<Uint8List>? chunks;
  OptArr4({required this.payload, this.chunks});
}

void writeOptArr4(SpecWriter w, OptArr4 obj) {
  var fieldCount = 1;
  if (obj.chunks != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('payload'); w.writeBytes(obj.payload);
  if (obj.chunks != null) { w.writeField('chunks'); w.beginArray(obj.chunks!.length); for (final item in obj.chunks!) { w.nextElement(); w.writeBytes(item); } w.endArray(); }
  w.endObject();
}

final SpecCodec<OptArr4> OptArr4Codec = SpecCodec<OptArr4>(
  encode: (w, obj) => writeOptArr4(w, obj),
  decode: (r) {
    Uint8List payloadVal = Uint8List(0);
    List<Uint8List>? chunksVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'payload': payloadVal = r.readBytes(); break;
        case 'chunks': chunksVal = () { final list = <Uint8List>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readBytes()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptArr4(payload: payloadVal, chunks: chunksVal);
  },
);

class OptArr5 {
  final List<Inner>? models;
  final String name;
  OptArr5({this.models, required this.name});
}

void writeOptArr5(SpecWriter w, OptArr5 obj) {
  var fieldCount = 1;
  if (obj.models != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.models != null) { w.writeField('models'); w.beginArray(obj.models!.length); for (final item in obj.models!) { w.nextElement(); InnerCodec.encode(w, item); } w.endArray(); }
  w.writeField('name'); w.writeString(obj.name);
  w.endObject();
}

final SpecCodec<OptArr5> OptArr5Codec = SpecCodec<OptArr5>(
  encode: (w, obj) => writeOptArr5(w, obj),
  decode: (r) {
    List<Inner>? modelsVal;
    String nameVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'models': modelsVal = () { final list = <Inner>[]; r.beginArray(); while (r.hasNextElement()) { list.add(InnerCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'name': nameVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptArr5(models: modelsVal, name: nameVal);
  },
);

class NestOpt1 {
  final Label outer;
  final String name;
  NestOpt1({required this.outer, required this.name});
}

void writeNestOpt1(SpecWriter w, NestOpt1 obj) {
  w.beginObject(2);
  w.writeField('outer'); LabelCodec.encode(w, obj.outer);
  w.writeField('name'); w.writeString(obj.name);
  w.endObject();
}

final SpecCodec<NestOpt1> NestOpt1Codec = SpecCodec<NestOpt1>(
  encode: (w, obj) => writeNestOpt1(w, obj),
  decode: (r) {
    late Label outerVal;
    String nameVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'outer': outerVal = LabelCodec.decode(r); break;
        case 'name': nameVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOpt1(outer: outerVal, name: nameVal);
  },
);

class NestOpt2 {
  final IdVal? a;
  final IdVal? b;
  final IdVal? c;
  NestOpt2({this.a, this.b, this.c});
}

void writeNestOpt2(SpecWriter w, NestOpt2 obj) {
  var fieldCount = 0;
  if (obj.a != null) fieldCount++;
  if (obj.b != null) fieldCount++;
  if (obj.c != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.a != null) { w.writeField('a'); IdValCodec.encode(w, obj.a!); }
  if (obj.b != null) { w.writeField('b'); IdValCodec.encode(w, obj.b!); }
  if (obj.c != null) { w.writeField('c'); IdValCodec.encode(w, obj.c!); }
  w.endObject();
}

final SpecCodec<NestOpt2> NestOpt2Codec = SpecCodec<NestOpt2>(
  encode: (w, obj) => writeNestOpt2(w, obj),
  decode: (r) {
    IdVal? aVal;
    IdVal? bVal;
    IdVal? cVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.isNull() ? (() { r.readNull(); return null; })() : IdValCodec.decode(r); break;
        case 'b': bVal = r.isNull() ? (() { r.readNull(); return null; })() : IdValCodec.decode(r); break;
        case 'c': cVal = r.isNull() ? (() { r.readNull(); return null; })() : IdValCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOpt2(a: aVal, b: bVal, c: cVal);
  },
);

class NestOpt3 {
  final Money money;
  final Range32? valueRange;
  NestOpt3({required this.money, this.valueRange});
}

void writeNestOpt3(SpecWriter w, NestOpt3 obj) {
  var fieldCount = 1;
  if (obj.valueRange != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('money'); MoneyCodec.encode(w, obj.money);
  if (obj.valueRange != null) { w.writeField('value_range'); Range32Codec.encode(w, obj.valueRange!); }
  w.endObject();
}

final SpecCodec<NestOpt3> NestOpt3Codec = SpecCodec<NestOpt3>(
  encode: (w, obj) => writeNestOpt3(w, obj),
  decode: (r) {
    late Money moneyVal;
    Range32? valueRangeVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'money': moneyVal = MoneyCodec.decode(r); break;
        case 'value_range': valueRangeVal = r.isNull() ? (() { r.readNull(); return null; })() : Range32Codec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOpt3(money: moneyVal, valueRange: valueRangeVal);
  },
);

class NestOpt4 {
  final Addr? addr;
  final Coord? coord;
  final String name;
  NestOpt4({this.addr, this.coord, required this.name});
}

void writeNestOpt4(SpecWriter w, NestOpt4 obj) {
  var fieldCount = 1;
  if (obj.addr != null) fieldCount++;
  if (obj.coord != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.addr != null) { w.writeField('addr'); AddrCodec.encode(w, obj.addr!); }
  if (obj.coord != null) { w.writeField('coord'); CoordCodec.encode(w, obj.coord!); }
  w.writeField('name'); w.writeString(obj.name);
  w.endObject();
}

final SpecCodec<NestOpt4> NestOpt4Codec = SpecCodec<NestOpt4>(
  encode: (w, obj) => writeNestOpt4(w, obj),
  decode: (r) {
    Addr? addrVal;
    Coord? coordVal;
    String nameVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'addr': addrVal = r.isNull() ? (() { r.readNull(); return null; })() : AddrCodec.decode(r); break;
        case 'coord': coordVal = r.isNull() ? (() { r.readNull(); return null; })() : CoordCodec.decode(r); break;
        case 'name': nameVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOpt4(addr: addrVal, coord: coordVal, name: nameVal);
  },
);

class NestOpt5 {
  final Point3 point;
  final Addr addr;
  final Label? label;
  NestOpt5({required this.point, required this.addr, this.label});
}

void writeNestOpt5(SpecWriter w, NestOpt5 obj) {
  var fieldCount = 2;
  if (obj.label != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('point'); Point3Codec.encode(w, obj.point);
  w.writeField('addr'); AddrCodec.encode(w, obj.addr);
  if (obj.label != null) { w.writeField('label'); LabelCodec.encode(w, obj.label!); }
  w.endObject();
}

final SpecCodec<NestOpt5> NestOpt5Codec = SpecCodec<NestOpt5>(
  encode: (w, obj) => writeNestOpt5(w, obj),
  decode: (r) {
    late Point3 pointVal;
    late Addr addrVal;
    Label? labelVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'point': pointVal = Point3Codec.decode(r); break;
        case 'addr': addrVal = AddrCodec.decode(r); break;
        case 'label': labelVal = r.isNull() ? (() { r.readNull(); return null; })() : LabelCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOpt5(point: pointVal, addr: addrVal, label: labelVal);
  },
);

class NestOptInner1 {
  final String tag;
  final OptInner? nested;
  NestOptInner1({required this.tag, this.nested});
}

void writeNestOptInner1(SpecWriter w, NestOptInner1 obj) {
  var fieldCount = 1;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('tag'); w.writeString(obj.tag);
  if (obj.nested != null) { w.writeField('nested'); OptInnerCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<NestOptInner1> NestOptInner1Codec = SpecCodec<NestOptInner1>(
  encode: (w, obj) => writeNestOptInner1(w, obj),
  decode: (r) {
    String tagVal = '';
    OptInner? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'tag': tagVal = r.readString(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : OptInnerCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOptInner1(tag: tagVal, nested: nestedVal);
  },
);

class NestOptInner2 {
  final String tag;
  final OptInner nested;
  NestOptInner2({required this.tag, required this.nested});
}

void writeNestOptInner2(SpecWriter w, NestOptInner2 obj) {
  w.beginObject(2);
  w.writeField('tag'); w.writeString(obj.tag);
  w.writeField('nested'); OptInnerCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<NestOptInner2> NestOptInner2Codec = SpecCodec<NestOptInner2>(
  encode: (w, obj) => writeNestOptInner2(w, obj),
  decode: (r) {
    String tagVal = '';
    late OptInner nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'tag': tagVal = r.readString(); break;
        case 'nested': nestedVal = OptInnerCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOptInner2(tag: tagVal, nested: nestedVal);
  },
);

class NestOptInner3 {
  final OptInner? outer;
  final OptInner? nested;
  NestOptInner3({this.outer, this.nested});
}

void writeNestOptInner3(SpecWriter w, NestOptInner3 obj) {
  var fieldCount = 0;
  if (obj.outer != null) fieldCount++;
  if (obj.nested != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.outer != null) { w.writeField('outer'); OptInnerCodec.encode(w, obj.outer!); }
  if (obj.nested != null) { w.writeField('nested'); OptInnerCodec.encode(w, obj.nested!); }
  w.endObject();
}

final SpecCodec<NestOptInner3> NestOptInner3Codec = SpecCodec<NestOptInner3>(
  encode: (w, obj) => writeNestOptInner3(w, obj),
  decode: (r) {
    OptInner? outerVal;
    OptInner? nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'outer': outerVal = r.isNull() ? (() { r.readNull(); return null; })() : OptInnerCodec.decode(r); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : OptInnerCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestOptInner3(outer: outerVal, nested: nestedVal);
  },
);

class DeepNest1 {
  final String label;
  final Addr nested;
  DeepNest1({required this.label, required this.nested});
}

void writeDeepNest1(SpecWriter w, DeepNest1 obj) {
  w.beginObject(2);
  w.writeField('label'); w.writeString(obj.label);
  w.writeField('nested'); AddrCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<DeepNest1> DeepNest1Codec = SpecCodec<DeepNest1>(
  encode: (w, obj) => writeDeepNest1(w, obj),
  decode: (r) {
    String labelVal = '';
    late Addr nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'nested': nestedVal = AddrCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepNest1(label: labelVal, nested: nestedVal);
  },
);

class DeepNest2 {
  final String name;
  final Money money;
  final Addr addr;
  DeepNest2({required this.name, required this.money, required this.addr});
}

void writeDeepNest2(SpecWriter w, DeepNest2 obj) {
  w.beginObject(3);
  w.writeField('name'); w.writeString(obj.name);
  w.writeField('money'); MoneyCodec.encode(w, obj.money);
  w.writeField('addr'); AddrCodec.encode(w, obj.addr);
  w.endObject();
}

final SpecCodec<DeepNest2> DeepNest2Codec = SpecCodec<DeepNest2>(
  encode: (w, obj) => writeDeepNest2(w, obj),
  decode: (r) {
    String nameVal = '';
    late Money moneyVal;
    late Addr addrVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'name': nameVal = r.readString(); break;
        case 'money': moneyVal = MoneyCodec.decode(r); break;
        case 'addr': addrVal = AddrCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepNest2(name: nameVal, money: moneyVal, addr: addrVal);
  },
);

class DeepNest3 {
  final String title;
  final Point3 point;
  final Range32 valueRange;
  final Money money;
  DeepNest3({required this.title, required this.point, required this.valueRange, required this.money});
}

void writeDeepNest3(SpecWriter w, DeepNest3 obj) {
  w.beginObject(4);
  w.writeField('title'); w.writeString(obj.title);
  w.writeField('point'); Point3Codec.encode(w, obj.point);
  w.writeField('value_range'); Range32Codec.encode(w, obj.valueRange);
  w.writeField('money'); MoneyCodec.encode(w, obj.money);
  w.endObject();
}

final SpecCodec<DeepNest3> DeepNest3Codec = SpecCodec<DeepNest3>(
  encode: (w, obj) => writeDeepNest3(w, obj),
  decode: (r) {
    String titleVal = '';
    late Point3 pointVal;
    late Range32 valueRangeVal;
    late Money moneyVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'title': titleVal = r.readString(); break;
        case 'point': pointVal = Point3Codec.decode(r); break;
        case 'value_range': valueRangeVal = Range32Codec.decode(r); break;
        case 'money': moneyVal = MoneyCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepNest3(title: titleVal, point: pointVal, valueRange: valueRangeVal, money: moneyVal);
  },
);

class DeepNest4 {
  final List<Coord> coords;
  final Inner nested;
  final String tag;
  DeepNest4({required this.coords, required this.nested, required this.tag});
}

void writeDeepNest4(SpecWriter w, DeepNest4 obj) {
  w.beginObject(3);
  w.writeField('coords'); w.beginArray(obj.coords.length); for (final item in obj.coords) { w.nextElement(); CoordCodec.encode(w, item); } w.endArray();
  w.writeField('nested'); InnerCodec.encode(w, obj.nested);
  w.writeField('tag'); w.writeString(obj.tag);
  w.endObject();
}

final SpecCodec<DeepNest4> DeepNest4Codec = SpecCodec<DeepNest4>(
  encode: (w, obj) => writeDeepNest4(w, obj),
  decode: (r) {
    List<Coord> coordsVal = [];
    late Inner nestedVal;
    String tagVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'coords': coordsVal = () { final list = <Coord>[]; r.beginArray(); while (r.hasNextElement()) { list.add(CoordCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'nested': nestedVal = InnerCodec.decode(r); break;
        case 'tag': tagVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepNest4(coords: coordsVal, nested: nestedVal, tag: tagVal);
  },
);

class DeepNest5 {
  final List<Label> labels;
  final Money money;
  final String name;
  DeepNest5({required this.labels, required this.money, required this.name});
}

void writeDeepNest5(SpecWriter w, DeepNest5 obj) {
  w.beginObject(3);
  w.writeField('labels'); w.beginArray(obj.labels.length); for (final item in obj.labels) { w.nextElement(); LabelCodec.encode(w, item); } w.endArray();
  w.writeField('money'); MoneyCodec.encode(w, obj.money);
  w.writeField('name'); w.writeString(obj.name);
  w.endObject();
}

final SpecCodec<DeepNest5> DeepNest5Codec = SpecCodec<DeepNest5>(
  encode: (w, obj) => writeDeepNest5(w, obj),
  decode: (r) {
    List<Label> labelsVal = [];
    late Money moneyVal;
    String nameVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'labels': labelsVal = () { final list = <Label>[]; r.beginArray(); while (r.hasNextElement()) { list.add(LabelCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'money': moneyVal = MoneyCodec.decode(r); break;
        case 'name': nameVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepNest5(labels: labelsVal, money: moneyVal, name: nameVal);
  },
);

class DeepNest6 {
  final List<IdVal> items;
  final Addr? addr;
  final Coord coord;
  DeepNest6({required this.items, this.addr, required this.coord});
}

void writeDeepNest6(SpecWriter w, DeepNest6 obj) {
  var fieldCount = 2;
  if (obj.addr != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); IdValCodec.encode(w, item); } w.endArray();
  if (obj.addr != null) { w.writeField('addr'); AddrCodec.encode(w, obj.addr!); }
  w.writeField('coord'); CoordCodec.encode(w, obj.coord);
  w.endObject();
}

final SpecCodec<DeepNest6> DeepNest6Codec = SpecCodec<DeepNest6>(
  encode: (w, obj) => writeDeepNest6(w, obj),
  decode: (r) {
    List<IdVal> itemsVal = [];
    Addr? addrVal;
    late Coord coordVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <IdVal>[]; r.beginArray(); while (r.hasNextElement()) { list.add(IdValCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'addr': addrVal = r.isNull() ? (() { r.readNull(); return null; })() : AddrCodec.decode(r); break;
        case 'coord': coordVal = CoordCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepNest6(items: itemsVal, addr: addrVal, coord: coordVal);
  },
);

class DeepNest7 {
  final Addr a;
  final Addr b;
  final Addr c;
  DeepNest7({required this.a, required this.b, required this.c});
}

void writeDeepNest7(SpecWriter w, DeepNest7 obj) {
  w.beginObject(3);
  w.writeField('a'); AddrCodec.encode(w, obj.a);
  w.writeField('b'); AddrCodec.encode(w, obj.b);
  w.writeField('c'); AddrCodec.encode(w, obj.c);
  w.endObject();
}

final SpecCodec<DeepNest7> DeepNest7Codec = SpecCodec<DeepNest7>(
  encode: (w, obj) => writeDeepNest7(w, obj),
  decode: (r) {
    late Addr aVal;
    late Addr bVal;
    late Addr cVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = AddrCodec.decode(r); break;
        case 'b': bVal = AddrCodec.decode(r); break;
        case 'c': cVal = AddrCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepNest7(a: aVal, b: bVal, c: cVal);
  },
);

class TimestampEntry {
  final BigInt ts;
  final String event;
  final Uint8List? payload;
  TimestampEntry({required this.ts, required this.event, this.payload});
}

void writeTimestampEntry(SpecWriter w, TimestampEntry obj) {
  var fieldCount = 2;
  if (obj.payload != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('ts'); w.writeInt64(obj.ts);
  w.writeField('event'); w.writeString(obj.event);
  if (obj.payload != null) { w.writeField('payload'); w.writeBytes(obj.payload!); }
  w.endObject();
}

final SpecCodec<TimestampEntry> TimestampEntryCodec = SpecCodec<TimestampEntry>(
  encode: (w, obj) => writeTimestampEntry(w, obj),
  decode: (r) {
    BigInt tsVal = BigInt.zero;
    String eventVal = '';
    Uint8List? payloadVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'ts': tsVal = r.readInt64(); break;
        case 'event': eventVal = r.readString(); break;
        case 'payload': payloadVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return TimestampEntry(ts: tsVal, event: eventVal, payload: payloadVal);
  },
);

class ConfigEntry {
  final String key;
  final int? intValue;
  final String? strValue;
  final bool? boolValue;
  final double? floatValue;
  ConfigEntry({required this.key, this.intValue, this.strValue, this.boolValue, this.floatValue});
}

void writeConfigEntry(SpecWriter w, ConfigEntry obj) {
  var fieldCount = 1;
  if (obj.intValue != null) fieldCount++;
  if (obj.strValue != null) fieldCount++;
  if (obj.boolValue != null) fieldCount++;
  if (obj.floatValue != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('key'); w.writeString(obj.key);
  if (obj.intValue != null) { w.writeField('intValue'); w.writeInt32(obj.intValue!); }
  if (obj.strValue != null) { w.writeField('strValue'); w.writeString(obj.strValue!); }
  if (obj.boolValue != null) { w.writeField('boolValue'); w.writeBool(obj.boolValue!); }
  if (obj.floatValue != null) { w.writeField('floatValue'); w.writeFloat64(obj.floatValue!); }
  w.endObject();
}

final SpecCodec<ConfigEntry> ConfigEntryCodec = SpecCodec<ConfigEntry>(
  encode: (w, obj) => writeConfigEntry(w, obj),
  decode: (r) {
    String keyVal = '';
    int? intValueVal;
    String? strValueVal;
    bool? boolValueVal;
    double? floatValueVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'key': keyVal = r.readString(); break;
        case 'intValue': intValueVal = r.readInt32(); break;
        case 'strValue': strValueVal = r.readString(); break;
        case 'boolValue': boolValueVal = r.readBool(); break;
        case 'floatValue': floatValueVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ConfigEntry(key: keyVal, intValue: intValueVal, strValue: strValueVal, boolValue: boolValueVal, floatValue: floatValueVal);
  },
);
