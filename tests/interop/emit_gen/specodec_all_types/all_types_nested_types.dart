library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class NestedSimple {
  final String name;
  final int value;
  NestedSimple({required this.name, required this.value});
}

void writeNestedSimple(SpecWriter w, NestedSimple obj) {
  w.beginObject(2);
  w.writeField('name'); w.writeString(obj.name);
  w.writeField('value'); w.writeInt32(obj.value);
  w.endObject();
}

final SpecCodec<NestedSimple> NestedSimpleCodec = SpecCodec<NestedSimple>(
  encode: (w, obj) => writeNestedSimple(w, obj),
  decode: (r) {
    String nameVal = '';
    int valueVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'name': nameVal = r.readString(); break;
        case 'value': valueVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return NestedSimple(name: nameVal, value: valueVal);
  },
);
