library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class ModelArr1 {
  final List<Inner> points;
  ModelArr1({required this.points});
}

void writeModelArr1(SpecWriter w, ModelArr1 obj) {
  w.beginObject(1);
  w.writeField('points'); w.beginArray(obj.points.length); for (final item in obj.points) { w.nextElement(); InnerCodec.encode(w, item); } w.endArray();
  w.endObject();
}

final SpecCodec<ModelArr1> ModelArr1Codec = SpecCodec<ModelArr1>(
  encode: (w, obj) => writeModelArr1(w, obj),
  decode: (r) {
    List<Inner> pointsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'points': pointsVal = () { final list = <Inner>[]; r.beginArray(); while (r.hasNextElement()) { list.add(InnerCodec.decode(r)); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ModelArr1(points: pointsVal);
  },
);

class ModelArr2 {
  final List<Coord> coords;
  ModelArr2({required this.coords});
}

void writeModelArr2(SpecWriter w, ModelArr2 obj) {
  w.beginObject(1);
  w.writeField('coords'); w.beginArray(obj.coords.length); for (final item in obj.coords) { w.nextElement(); CoordCodec.encode(w, item); } w.endArray();
  w.endObject();
}

final SpecCodec<ModelArr2> ModelArr2Codec = SpecCodec<ModelArr2>(
  encode: (w, obj) => writeModelArr2(w, obj),
  decode: (r) {
    List<Coord> coordsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'coords': coordsVal = () { final list = <Coord>[]; r.beginArray(); while (r.hasNextElement()) { list.add(CoordCodec.decode(r)); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ModelArr2(coords: coordsVal);
  },
);

class ModelArr3 {
  final List<IdVal> items;
  final String tag;
  ModelArr3({required this.items, required this.tag});
}

void writeModelArr3(SpecWriter w, ModelArr3 obj) {
  w.beginObject(2);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); IdValCodec.encode(w, item); } w.endArray();
  w.writeField('tag'); w.writeString(obj.tag);
  w.endObject();
}

final SpecCodec<ModelArr3> ModelArr3Codec = SpecCodec<ModelArr3>(
  encode: (w, obj) => writeModelArr3(w, obj),
  decode: (r) {
    List<IdVal> itemsVal = [];
    String tagVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <IdVal>[]; r.beginArray(); while (r.hasNextElement()) { list.add(IdValCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'tag': tagVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ModelArr3(items: itemsVal, tag: tagVal);
  },
);

class ModelArr4 {
  final List<Label> labels;
  final int count;
  ModelArr4({required this.labels, required this.count});
}

void writeModelArr4(SpecWriter w, ModelArr4 obj) {
  w.beginObject(2);
  w.writeField('labels'); w.beginArray(obj.labels.length); for (final item in obj.labels) { w.nextElement(); LabelCodec.encode(w, item); } w.endArray();
  w.writeField('count'); w.writeInt32(obj.count);
  w.endObject();
}

final SpecCodec<ModelArr4> ModelArr4Codec = SpecCodec<ModelArr4>(
  encode: (w, obj) => writeModelArr4(w, obj),
  decode: (r) {
    List<Label> labelsVal = [];
    int countVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'labels': labelsVal = () { final list = <Label>[]; r.beginArray(); while (r.hasNextElement()) { list.add(LabelCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'count': countVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ModelArr4(labels: labelsVal, count: countVal);
  },
);

class ModelArr5 {
  final List<Money> arr;
  final List<Addr> bs;
  ModelArr5({required this.arr, required this.bs});
}

void writeModelArr5(SpecWriter w, ModelArr5 obj) {
  w.beginObject(2);
  w.writeField('arr'); w.beginArray(obj.arr.length); for (final item in obj.arr) { w.nextElement(); MoneyCodec.encode(w, item); } w.endArray();
  w.writeField('bs'); w.beginArray(obj.bs.length); for (final item in obj.bs) { w.nextElement(); AddrCodec.encode(w, item); } w.endArray();
  w.endObject();
}

final SpecCodec<ModelArr5> ModelArr5Codec = SpecCodec<ModelArr5>(
  encode: (w, obj) => writeModelArr5(w, obj),
  decode: (r) {
    List<Money> arrVal = [];
    List<Addr> bsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'arr': arrVal = () { final list = <Money>[]; r.beginArray(); while (r.hasNextElement()) { list.add(MoneyCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'bs': bsVal = () { final list = <Addr>[]; r.beginArray(); while (r.hasNextElement()) { list.add(AddrCodec.decode(r)); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return ModelArr5(arr: arrVal, bs: bsVal);
  },
);

class Mix01 {
  final String name;
  final int value;
  final Inner point;
  Mix01({required this.name, required this.value, required this.point});
}

void writeMix01(SpecWriter w, Mix01 obj) {
  w.beginObject(3);
  w.writeField('name'); w.writeString(obj.name);
  w.writeField('value'); w.writeInt32(obj.value);
  w.writeField('point'); InnerCodec.encode(w, obj.point);
  w.endObject();
}

final SpecCodec<Mix01> Mix01Codec = SpecCodec<Mix01>(
  encode: (w, obj) => writeMix01(w, obj),
  decode: (r) {
    String nameVal = '';
    int valueVal = 0;
    late Inner pointVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'name': nameVal = r.readString(); break;
        case 'value': valueVal = r.readInt32(); break;
        case 'point': pointVal = InnerCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix01(name: nameVal, value: valueVal, point: pointVal);
  },
);

class Mix02 {
  final String id;
  final Coord loc;
  final List<String> tags;
  Mix02({required this.id, required this.loc, required this.tags});
}

void writeMix02(SpecWriter w, Mix02 obj) {
  w.beginObject(3);
  w.writeField('id'); w.writeString(obj.id);
  w.writeField('loc'); CoordCodec.encode(w, obj.loc);
  w.writeField('tags'); w.beginArray(obj.tags.length); for (final item in obj.tags) { w.nextElement(); w.writeString(item); } w.endArray();
  w.endObject();
}

final SpecCodec<Mix02> Mix02Codec = SpecCodec<Mix02>(
  encode: (w, obj) => writeMix02(w, obj),
  decode: (r) {
    String idVal = '';
    late Coord locVal;
    List<String> tagsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'id': idVal = r.readString(); break;
        case 'loc': locVal = CoordCodec.decode(r); break;
        case 'tags': tagsVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix02(id: idVal, loc: locVal, tags: tagsVal);
  },
);

class Mix03 {
  final String label;
  final Range32 valueRange;
  final bool active;
  Mix03({required this.label, required this.valueRange, required this.active});
}

void writeMix03(SpecWriter w, Mix03 obj) {
  w.beginObject(3);
  w.writeField('label'); w.writeString(obj.label);
  w.writeField('value_range'); Range32Codec.encode(w, obj.valueRange);
  w.writeField('active'); w.writeBool(obj.active);
  w.endObject();
}

final SpecCodec<Mix03> Mix03Codec = SpecCodec<Mix03>(
  encode: (w, obj) => writeMix03(w, obj),
  decode: (r) {
    String labelVal = '';
    late Range32 valueRangeVal;
    bool activeVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'label': labelVal = r.readString(); break;
        case 'value_range': valueRangeVal = Range32Codec.decode(r); break;
        case 'active': activeVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix03(label: labelVal, valueRange: valueRangeVal, active: activeVal);
  },
);

class Mix04 {
  final String title;
  final Money price;
  final bool inStock;
  final double rating;
  Mix04({required this.title, required this.price, required this.inStock, required this.rating});
}

void writeMix04(SpecWriter w, Mix04 obj) {
  w.beginObject(4);
  w.writeField('title'); w.writeString(obj.title);
  w.writeField('price'); MoneyCodec.encode(w, obj.price);
  w.writeField('inStock'); w.writeBool(obj.inStock);
  w.writeField('rating'); w.writeFloat64(obj.rating);
  w.endObject();
}

final SpecCodec<Mix04> Mix04Codec = SpecCodec<Mix04>(
  encode: (w, obj) => writeMix04(w, obj),
  decode: (r) {
    String titleVal = '';
    late Money priceVal;
    bool inStockVal = false;
    double ratingVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'title': titleVal = r.readString(); break;
        case 'price': priceVal = MoneyCodec.decode(r); break;
        case 'inStock': inStockVal = r.readBool(); break;
        case 'rating': ratingVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix04(title: titleVal, price: priceVal, inStock: inStockVal, rating: ratingVal);
  },
);

class Mix05 {
  final Addr addr;
  final List<Coord> coords;
  Mix05({required this.addr, required this.coords});
}

void writeMix05(SpecWriter w, Mix05 obj) {
  w.beginObject(2);
  w.writeField('addr'); AddrCodec.encode(w, obj.addr);
  w.writeField('coords'); w.beginArray(obj.coords.length); for (final item in obj.coords) { w.nextElement(); CoordCodec.encode(w, item); } w.endArray();
  w.endObject();
}

final SpecCodec<Mix05> Mix05Codec = SpecCodec<Mix05>(
  encode: (w, obj) => writeMix05(w, obj),
  decode: (r) {
    late Addr addrVal;
    List<Coord> coordsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'addr': addrVal = AddrCodec.decode(r); break;
        case 'coords': coordsVal = () { final list = <Coord>[]; r.beginArray(); while (r.hasNextElement()) { list.add(CoordCodec.decode(r)); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix05(addr: addrVal, coords: coordsVal);
  },
);

class Mix06 {
  final String name;
  final int age;
  final Addr? address;
  final String? email;
  Mix06({required this.name, required this.age, this.address, this.email});
}

void writeMix06(SpecWriter w, Mix06 obj) {
  var fieldCount = 2;
  if (obj.address != null) fieldCount++;
  if (obj.email != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('name'); w.writeString(obj.name);
  w.writeField('age'); w.writeInt32(obj.age);
  if (obj.address != null) { w.writeField('address'); AddrCodec.encode(w, obj.address!); }
  if (obj.email != null) { w.writeField('email'); w.writeString(obj.email!); }
  w.endObject();
}

final SpecCodec<Mix06> Mix06Codec = SpecCodec<Mix06>(
  encode: (w, obj) => writeMix06(w, obj),
  decode: (r) {
    String nameVal = '';
    int ageVal = 0;
    Addr? addressVal;
    String? emailVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'name': nameVal = r.readString(); break;
        case 'age': ageVal = r.readInt32(); break;
        case 'address': addressVal = r.isNull() ? (() { r.readNull(); return null; })() : AddrCodec.decode(r); break;
        case 'email': emailVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix06(name: nameVal, age: ageVal, address: addressVal, email: emailVal);
  },
);

class Mix07 {
  final Point3 origin;
  final Point3 dest;
  final double distance;
  Mix07({required this.origin, required this.dest, required this.distance});
}

void writeMix07(SpecWriter w, Mix07 obj) {
  w.beginObject(3);
  w.writeField('origin'); Point3Codec.encode(w, obj.origin);
  w.writeField('dest'); Point3Codec.encode(w, obj.dest);
  w.writeField('distance'); w.writeFloat64(obj.distance);
  w.endObject();
}

final SpecCodec<Mix07> Mix07Codec = SpecCodec<Mix07>(
  encode: (w, obj) => writeMix07(w, obj),
  decode: (r) {
    late Point3 originVal;
    late Point3 destVal;
    double distanceVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'origin': originVal = Point3Codec.decode(r); break;
        case 'dest': destVal = Point3Codec.decode(r); break;
        case 'distance': distanceVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix07(origin: originVal, dest: destVal, distance: distanceVal);
  },
);

class Mix08 {
  final List<String> keys;
  final List<int> values;
  final Label? meta;
  Mix08({required this.keys, required this.values, this.meta});
}

void writeMix08(SpecWriter w, Mix08 obj) {
  var fieldCount = 2;
  if (obj.meta != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('keys'); w.beginArray(obj.keys.length); for (final item in obj.keys) { w.nextElement(); w.writeString(item); } w.endArray();
  w.writeField('values'); w.beginArray(obj.values.length); for (final item in obj.values) { w.nextElement(); w.writeInt32(item); } w.endArray();
  if (obj.meta != null) { w.writeField('meta'); LabelCodec.encode(w, obj.meta!); }
  w.endObject();
}

final SpecCodec<Mix08> Mix08Codec = SpecCodec<Mix08>(
  encode: (w, obj) => writeMix08(w, obj),
  decode: (r) {
    List<String> keysVal = [];
    List<int> valuesVal = [];
    Label? metaVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'keys': keysVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        case 'values': valuesVal = () { final list = <int>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readInt32()); } r.endArray(); return list; }(); break;
        case 'meta': metaVal = r.isNull() ? (() { r.readNull(); return null; })() : LabelCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix08(keys: keysVal, values: valuesVal, meta: metaVal);
  },
);

class Mix09 {
  final BigInt id;
  final Uint8List payload;
  final int checksum;
  final IdVal? prev;
  Mix09({required this.id, required this.payload, required this.checksum, this.prev});
}

void writeMix09(SpecWriter w, Mix09 obj) {
  var fieldCount = 3;
  if (obj.prev != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('id'); w.writeInt64(obj.id);
  w.writeField('payload'); w.writeBytes(obj.payload);
  w.writeField('checksum'); w.writeUint32(obj.checksum);
  if (obj.prev != null) { w.writeField('prev'); IdValCodec.encode(w, obj.prev!); }
  w.endObject();
}

final SpecCodec<Mix09> Mix09Codec = SpecCodec<Mix09>(
  encode: (w, obj) => writeMix09(w, obj),
  decode: (r) {
    BigInt idVal = BigInt.zero;
    Uint8List payloadVal = Uint8List(0);
    int checksumVal = 0;
    IdVal? prevVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'id': idVal = r.readInt64(); break;
        case 'payload': payloadVal = r.readBytes(); break;
        case 'checksum': checksumVal = r.readUint32(); break;
        case 'prev': prevVal = r.isNull() ? (() { r.readNull(); return null; })() : IdValCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix09(id: idVal, payload: payloadVal, checksum: checksumVal, prev: prevVal);
  },
);

class Mix10 {
  final List<String> items;
  final int total;
  final double avg;
  final Range32 valueRange;
  Mix10({required this.items, required this.total, required this.avg, required this.valueRange});
}

void writeMix10(SpecWriter w, Mix10 obj) {
  w.beginObject(4);
  w.writeField('items'); w.beginArray(obj.items.length); for (final item in obj.items) { w.nextElement(); w.writeString(item); } w.endArray();
  w.writeField('total'); w.writeInt32(obj.total);
  w.writeField('avg'); w.writeFloat64(obj.avg);
  w.writeField('value_range'); Range32Codec.encode(w, obj.valueRange);
  w.endObject();
}

final SpecCodec<Mix10> Mix10Codec = SpecCodec<Mix10>(
  encode: (w, obj) => writeMix10(w, obj),
  decode: (r) {
    List<String> itemsVal = [];
    int totalVal = 0;
    double avgVal = 0.0;
    late Range32 valueRangeVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'items': itemsVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        case 'total': totalVal = r.readInt32(); break;
        case 'avg': avgVal = r.readFloat64(); break;
        case 'value_range': valueRangeVal = Range32Codec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix10(items: itemsVal, total: totalVal, avg: avgVal, valueRange: valueRangeVal);
  },
);

class Mix11 {
  final String name;
  final List<double> values;
  final Inner? nested;
  final bool? flag;
  Mix11({required this.name, required this.values, this.nested, this.flag});
}

void writeMix11(SpecWriter w, Mix11 obj) {
  var fieldCount = 2;
  if (obj.nested != null) fieldCount++;
  if (obj.flag != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('name'); w.writeString(obj.name);
  w.writeField('values'); w.beginArray(obj.values.length); for (final item in obj.values) { w.nextElement(); w.writeFloat64(item); } w.endArray();
  if (obj.nested != null) { w.writeField('nested'); InnerCodec.encode(w, obj.nested!); }
  if (obj.flag != null) { w.writeField('flag'); w.writeBool(obj.flag!); }
  w.endObject();
}

final SpecCodec<Mix11> Mix11Codec = SpecCodec<Mix11>(
  encode: (w, obj) => writeMix11(w, obj),
  decode: (r) {
    String nameVal = '';
    List<double> valuesVal = [];
    Inner? nestedVal;
    bool? flagVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'name': nameVal = r.readString(); break;
        case 'values': valuesVal = () { final list = <double>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readFloat64()); } r.endArray(); return list; }(); break;
        case 'nested': nestedVal = r.isNull() ? (() { r.readNull(); return null; })() : InnerCodec.decode(r); break;
        case 'flag': flagVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix11(name: nameVal, values: valuesVal, nested: nestedVal, flag: flagVal);
  },
);

class Mix12 {
  final String header;
  final List<IdVal> entries;
  final String? footer;
  Mix12({required this.header, required this.entries, this.footer});
}

void writeMix12(SpecWriter w, Mix12 obj) {
  var fieldCount = 2;
  if (obj.footer != null) fieldCount++;
  w.beginObject(fieldCount);
  w.writeField('header'); w.writeString(obj.header);
  w.writeField('entries'); w.beginArray(obj.entries.length); for (final item in obj.entries) { w.nextElement(); IdValCodec.encode(w, item); } w.endArray();
  if (obj.footer != null) { w.writeField('footer'); w.writeString(obj.footer!); }
  w.endObject();
}

final SpecCodec<Mix12> Mix12Codec = SpecCodec<Mix12>(
  encode: (w, obj) => writeMix12(w, obj),
  decode: (r) {
    String headerVal = '';
    List<IdVal> entriesVal = [];
    String? footerVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'header': headerVal = r.readString(); break;
        case 'entries': entriesVal = () { final list = <IdVal>[]; r.beginArray(); while (r.hasNextElement()) { list.add(IdValCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'footer': footerVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix12(header: headerVal, entries: entriesVal, footer: footerVal);
  },
);

class Mix13 {
  final int a;
  final double b;
  final String c;
  final bool d;
  final Uint8List e;
  final Inner nested;
  Mix13({required this.a, required this.b, required this.c, required this.d, required this.e, required this.nested});
}

void writeMix13(SpecWriter w, Mix13 obj) {
  w.beginObject(6);
  w.writeField('a'); w.writeInt32(obj.a);
  w.writeField('b'); w.writeFloat64(obj.b);
  w.writeField('c'); w.writeString(obj.c);
  w.writeField('d'); w.writeBool(obj.d);
  w.writeField('e'); w.writeBytes(obj.e);
  w.writeField('nested'); InnerCodec.encode(w, obj.nested);
  w.endObject();
}

final SpecCodec<Mix13> Mix13Codec = SpecCodec<Mix13>(
  encode: (w, obj) => writeMix13(w, obj),
  decode: (r) {
    int aVal = 0;
    double bVal = 0.0;
    String cVal = '';
    bool dVal = false;
    Uint8List eVal = Uint8List(0);
    late Inner nestedVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readInt32(); break;
        case 'b': bVal = r.readFloat64(); break;
        case 'c': cVal = r.readString(); break;
        case 'd': dVal = r.readBool(); break;
        case 'e': eVal = r.readBytes(); break;
        case 'nested': nestedVal = InnerCodec.decode(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix13(a: aVal, b: bVal, c: cVal, d: dVal, e: eVal, nested: nestedVal);
  },
);

class Mix14 {
  final List<Money> amounts;
  final BigInt total;
  final String currency;
  Mix14({required this.amounts, required this.total, required this.currency});
}

void writeMix14(SpecWriter w, Mix14 obj) {
  w.beginObject(3);
  w.writeField('amounts'); w.beginArray(obj.amounts.length); for (final item in obj.amounts) { w.nextElement(); MoneyCodec.encode(w, item); } w.endArray();
  w.writeField('total'); w.writeInt64(obj.total);
  w.writeField('currency'); w.writeString(obj.currency);
  w.endObject();
}

final SpecCodec<Mix14> Mix14Codec = SpecCodec<Mix14>(
  encode: (w, obj) => writeMix14(w, obj),
  decode: (r) {
    List<Money> amountsVal = [];
    BigInt totalVal = BigInt.zero;
    String currencyVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'amounts': amountsVal = () { final list = <Money>[]; r.beginArray(); while (r.hasNextElement()) { list.add(MoneyCodec.decode(r)); } r.endArray(); return list; }(); break;
        case 'total': totalVal = r.readInt64(); break;
        case 'currency': currencyVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix14(amounts: amountsVal, total: totalVal, currency: currencyVal);
  },
);

class Mix15 {
  final Addr srcAddr;
  final Addr dstAddr;
  final double distance;
  final double duration;
  Mix15({required this.srcAddr, required this.dstAddr, required this.distance, required this.duration});
}

void writeMix15(SpecWriter w, Mix15 obj) {
  w.beginObject(4);
  w.writeField('src_addr'); AddrCodec.encode(w, obj.srcAddr);
  w.writeField('dst_addr'); AddrCodec.encode(w, obj.dstAddr);
  w.writeField('distance'); w.writeFloat64(obj.distance);
  w.writeField('duration'); w.writeFloat64(obj.duration);
  w.endObject();
}

final SpecCodec<Mix15> Mix15Codec = SpecCodec<Mix15>(
  encode: (w, obj) => writeMix15(w, obj),
  decode: (r) {
    late Addr srcAddrVal;
    late Addr dstAddrVal;
    double distanceVal = 0.0;
    double durationVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'src_addr': srcAddrVal = AddrCodec.decode(r); break;
        case 'dst_addr': dstAddrVal = AddrCodec.decode(r); break;
        case 'distance': distanceVal = r.readFloat64(); break;
        case 'duration': durationVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Mix15(srcAddr: srcAddrVal, dstAddr: dstAddrVal, distance: distanceVal, duration: durationVal);
  },
);

class AllOpt1 {
  final String? a;
  final int? b;
  final bool? c;
  AllOpt1({this.a, this.b, this.c});
}

void writeAllOpt1(SpecWriter w, AllOpt1 obj) {
  var fieldCount = 0;
  if (obj.a != null) fieldCount++;
  if (obj.b != null) fieldCount++;
  if (obj.c != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.a != null) { w.writeField('a'); w.writeString(obj.a!); }
  if (obj.b != null) { w.writeField('b'); w.writeInt32(obj.b!); }
  if (obj.c != null) { w.writeField('c'); w.writeBool(obj.c!); }
  w.endObject();
}

final SpecCodec<AllOpt1> AllOpt1Codec = SpecCodec<AllOpt1>(
  encode: (w, obj) => writeAllOpt1(w, obj),
  decode: (r) {
    String? aVal;
    int? bVal;
    bool? cVal;
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
    return AllOpt1(a: aVal, b: bVal, c: cVal);
  },
);

class AllOpt2 {
  final double? x;
  final Uint8List? y;
  final BigInt? z;
  AllOpt2({this.x, this.y, this.z});
}

void writeAllOpt2(SpecWriter w, AllOpt2 obj) {
  var fieldCount = 0;
  if (obj.x != null) fieldCount++;
  if (obj.y != null) fieldCount++;
  if (obj.z != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.x != null) { w.writeField('x'); w.writeFloat64(obj.x!); }
  if (obj.y != null) { w.writeField('y'); w.writeBytes(obj.y!); }
  if (obj.z != null) { w.writeField('z'); w.writeInt64(obj.z!); }
  w.endObject();
}

final SpecCodec<AllOpt2> AllOpt2Codec = SpecCodec<AllOpt2>(
  encode: (w, obj) => writeAllOpt2(w, obj),
  decode: (r) {
    double? xVal;
    Uint8List? yVal;
    BigInt? zVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'x': xVal = r.readFloat64(); break;
        case 'y': yVal = r.readBytes(); break;
        case 'z': zVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return AllOpt2(x: xVal, y: yVal, z: zVal);
  },
);

class AllOpt3 {
  final String? name;
  final int? age;
  final double? score;
  final bool? active;
  AllOpt3({this.name, this.age, this.score, this.active});
}

void writeAllOpt3(SpecWriter w, AllOpt3 obj) {
  var fieldCount = 0;
  if (obj.name != null) fieldCount++;
  if (obj.age != null) fieldCount++;
  if (obj.score != null) fieldCount++;
  if (obj.active != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.name != null) { w.writeField('name'); w.writeString(obj.name!); }
  if (obj.age != null) { w.writeField('age'); w.writeInt32(obj.age!); }
  if (obj.score != null) { w.writeField('score'); w.writeFloat64(obj.score!); }
  if (obj.active != null) { w.writeField('active'); w.writeBool(obj.active!); }
  w.endObject();
}

final SpecCodec<AllOpt3> AllOpt3Codec = SpecCodec<AllOpt3>(
  encode: (w, obj) => writeAllOpt3(w, obj),
  decode: (r) {
    String? nameVal;
    int? ageVal;
    double? scoreVal;
    bool? activeVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'name': nameVal = r.readString(); break;
        case 'age': ageVal = r.readInt32(); break;
        case 'score': scoreVal = r.readFloat64(); break;
        case 'active': activeVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return AllOpt3(name: nameVal, age: ageVal, score: scoreVal, active: activeVal);
  },
);

class AllOpt4 {
  final int? a;
  final BigInt? b;
  final int? c;
  final String? d;
  final Uint8List? e;
  AllOpt4({this.a, this.b, this.c, this.d, this.e});
}

void writeAllOpt4(SpecWriter w, AllOpt4 obj) {
  var fieldCount = 0;
  if (obj.a != null) fieldCount++;
  if (obj.b != null) fieldCount++;
  if (obj.c != null) fieldCount++;
  if (obj.d != null) fieldCount++;
  if (obj.e != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.a != null) { w.writeField('a'); w.writeUint32(obj.a!); }
  if (obj.b != null) { w.writeField('b'); w.writeUint64(obj.b!); }
  if (obj.c != null) { w.writeField('c'); w.writeInt32(obj.c!); }
  if (obj.d != null) { w.writeField('d'); w.writeString(obj.d!); }
  if (obj.e != null) { w.writeField('e'); w.writeBytes(obj.e!); }
  w.endObject();
}

final SpecCodec<AllOpt4> AllOpt4Codec = SpecCodec<AllOpt4>(
  encode: (w, obj) => writeAllOpt4(w, obj),
  decode: (r) {
    int? aVal;
    BigInt? bVal;
    int? cVal;
    String? dVal;
    Uint8List? eVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'a': aVal = r.readUint32(); break;
        case 'b': bVal = r.readUint64(); break;
        case 'c': cVal = r.readInt32(); break;
        case 'd': dVal = r.readString(); break;
        case 'e': eVal = r.readBytes(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return AllOpt4(a: aVal, b: bVal, c: cVal, d: dVal, e: eVal);
  },
);

class AllOpt5 {
  final Inner? p;
  final String? q;
  AllOpt5({this.p, this.q});
}

void writeAllOpt5(SpecWriter w, AllOpt5 obj) {
  var fieldCount = 0;
  if (obj.p != null) fieldCount++;
  if (obj.q != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.p != null) { w.writeField('p'); InnerCodec.encode(w, obj.p!); }
  if (obj.q != null) { w.writeField('q'); w.writeString(obj.q!); }
  w.endObject();
}

final SpecCodec<AllOpt5> AllOpt5Codec = SpecCodec<AllOpt5>(
  encode: (w, obj) => writeAllOpt5(w, obj),
  decode: (r) {
    Inner? pVal;
    String? qVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'p': pVal = r.isNull() ? (() { r.readNull(); return null; })() : InnerCodec.decode(r); break;
        case 'q': qVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return AllOpt5(p: pVal, q: qVal);
  },
);
