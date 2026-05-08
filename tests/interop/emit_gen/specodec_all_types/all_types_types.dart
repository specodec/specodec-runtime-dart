library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class Inner {
  final int x;
  final int y;
  Inner({required this.x, required this.y});
}

void writeInner(SpecWriter w, Inner obj) {
  w.beginObject(2);
  w.writeField('x'); w.writeInt32(obj.x);
  w.writeField('y'); w.writeInt32(obj.y);
  w.endObject();
}

final SpecCodec<Inner> InnerCodec = SpecCodec<Inner>(
  encode: (w, obj) => writeInner(w, obj),
  decode: (r) {
    int xVal = 0;
    int yVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'x': xVal = r.readInt32(); break;
        case 'y': yVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Inner(x: xVal, y: yVal);
  },
);

class Coord {
  final double lat;
  final double lng;
  Coord({required this.lat, required this.lng});
}

void writeCoord(SpecWriter w, Coord obj) {
  w.beginObject(2);
  w.writeField('lat'); w.writeFloat64(obj.lat);
  w.writeField('lng'); w.writeFloat64(obj.lng);
  w.endObject();
}

final SpecCodec<Coord> CoordCodec = SpecCodec<Coord>(
  encode: (w, obj) => writeCoord(w, obj),
  decode: (r) {
    double latVal = 0.0;
    double lngVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'lat': latVal = r.readFloat64(); break;
        case 'lng': lngVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Coord(lat: latVal, lng: lngVal);
  },
);

class IdVal {
  final String id;
  final int value;
  IdVal({required this.id, required this.value});
}

void writeIdVal(SpecWriter w, IdVal obj) {
  w.beginObject(2);
  w.writeField('id'); w.writeString(obj.id);
  w.writeField('value'); w.writeInt32(obj.value);
  w.endObject();
}

final SpecCodec<IdVal> IdValCodec = SpecCodec<IdVal>(
  encode: (w, obj) => writeIdVal(w, obj),
  decode: (r) {
    String idVal = '';
    int valueVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'id': idVal = r.readString(); break;
        case 'value': valueVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return IdVal(id: idVal, value: valueVal);
  },
);

class Label {
  final String key;
  final String text;
  Label({required this.key, required this.text});
}

void writeLabel(SpecWriter w, Label obj) {
  w.beginObject(2);
  w.writeField('key'); w.writeString(obj.key);
  w.writeField('text'); w.writeString(obj.text);
  w.endObject();
}

final SpecCodec<Label> LabelCodec = SpecCodec<Label>(
  encode: (w, obj) => writeLabel(w, obj),
  decode: (r) {
    String keyVal = '';
    String textVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'key': keyVal = r.readString(); break;
        case 'text': textVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Label(key: keyVal, text: textVal);
  },
);

class Money {
  final BigInt amount;
  final String currency;
  Money({required this.amount, required this.currency});
}

void writeMoney(SpecWriter w, Money obj) {
  w.beginObject(2);
  w.writeField('amount'); w.writeInt64(obj.amount);
  w.writeField('currency'); w.writeString(obj.currency);
  w.endObject();
}

final SpecCodec<Money> MoneyCodec = SpecCodec<Money>(
  encode: (w, obj) => writeMoney(w, obj),
  decode: (r) {
    BigInt amountVal = BigInt.zero;
    String currencyVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'amount': amountVal = r.readInt64(); break;
        case 'currency': currencyVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Money(amount: amountVal, currency: currencyVal);
  },
);

class Range32 {
  final int min;
  final int max;
  Range32({required this.min, required this.max});
}

void writeRange32(SpecWriter w, Range32 obj) {
  w.beginObject(2);
  w.writeField('min'); w.writeInt32(obj.min);
  w.writeField('max'); w.writeInt32(obj.max);
  w.endObject();
}

final SpecCodec<Range32> Range32Codec = SpecCodec<Range32>(
  encode: (w, obj) => writeRange32(w, obj),
  decode: (r) {
    int minVal = 0;
    int maxVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'min': minVal = r.readInt32(); break;
        case 'max': maxVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Range32(min: minVal, max: maxVal);
  },
);

class Addr {
  final String street;
  final String city;
  final String zip;
  Addr({required this.street, required this.city, required this.zip});
}

void writeAddr(SpecWriter w, Addr obj) {
  w.beginObject(3);
  w.writeField('street'); w.writeString(obj.street);
  w.writeField('city'); w.writeString(obj.city);
  w.writeField('zip'); w.writeString(obj.zip);
  w.endObject();
}

final SpecCodec<Addr> AddrCodec = SpecCodec<Addr>(
  encode: (w, obj) => writeAddr(w, obj),
  decode: (r) {
    String streetVal = '';
    String cityVal = '';
    String zipVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'street': streetVal = r.readString(); break;
        case 'city': cityVal = r.readString(); break;
        case 'zip': zipVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Addr(street: streetVal, city: cityVal, zip: zipVal);
  },
);

class Point3 {
  final double x;
  final double y;
  final double z;
  Point3({required this.x, required this.y, required this.z});
}

void writePoint3(SpecWriter w, Point3 obj) {
  w.beginObject(3);
  w.writeField('x'); w.writeFloat64(obj.x);
  w.writeField('y'); w.writeFloat64(obj.y);
  w.writeField('z'); w.writeFloat64(obj.z);
  w.endObject();
}

final SpecCodec<Point3> Point3Codec = SpecCodec<Point3>(
  encode: (w, obj) => writePoint3(w, obj),
  decode: (r) {
    double xVal = 0.0;
    double yVal = 0.0;
    double zVal = 0.0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'x': xVal = r.readFloat64(); break;
        case 'y': yVal = r.readFloat64(); break;
        case 'z': zVal = r.readFloat64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return Point3(x: xVal, y: yVal, z: zVal);
  },
);

class OptInner {
  final String? name;
  final double? score;
  final String? tag;
  OptInner({this.name, this.score, this.tag});
}

void writeOptInner(SpecWriter w, OptInner obj) {
  var fieldCount = 0;
  if (obj.name != null) fieldCount++;
  if (obj.score != null) fieldCount++;
  if (obj.tag != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.name != null) { w.writeField('name'); w.writeString(obj.name!); }
  if (obj.score != null) { w.writeField('score'); w.writeFloat64(obj.score!); }
  if (obj.tag != null) { w.writeField('tag'); w.writeString(obj.tag!); }
  w.endObject();
}

final SpecCodec<OptInner> OptInnerCodec = SpecCodec<OptInner>(
  encode: (w, obj) => writeOptInner(w, obj),
  decode: (r) {
    String? nameVal;
    double? scoreVal;
    String? tagVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'name': nameVal = r.readString(); break;
        case 'score': scoreVal = r.readFloat64(); break;
        case 'tag': tagVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptInner(name: nameVal, score: scoreVal, tag: tagVal);
  },
);
