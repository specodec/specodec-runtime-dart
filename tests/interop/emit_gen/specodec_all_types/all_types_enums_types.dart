library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

enum Color {
  Red(0),
  Green(1),
  Blue(2)
;
  final int value;
  const Color(this.value);
}
enum Priority {
  Low(0),
  Medium(1),
  High(2),
  Critical(3)
;
  final int value;
  const Priority(this.value);
}
enum Status {
  Active(0),
  Inactive(1),
  Pending(2),
  Archived(3)
;
  final int value;
  const Status(this.value);
}

class EnumHolder {
  final String color;
  final String priority;
  final String status;
  EnumHolder({required this.color, required this.priority, required this.status});
}

void writeEnumHolder(SpecWriter w, EnumHolder obj) {
  w.beginObject(3);
  w.writeField('color'); w.writeString(obj.color);
  w.writeField('priority'); w.writeString(obj.priority);
  w.writeField('status'); w.writeString(obj.status);
  w.endObject();
}

final SpecCodec<EnumHolder> EnumHolderCodec = SpecCodec<EnumHolder>(
  encode: (w, obj) => writeEnumHolder(w, obj),
  decode: (r) {
    String colorVal = '';
    String priorityVal = '';
    String statusVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'color': colorVal = r.readString(); break;
        case 'priority': priorityVal = r.readString(); break;
        case 'status': statusVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EnumHolder(color: colorVal, priority: priorityVal, status: statusVal);
  },
);

class OptEnumHolder {
  final String? color;
  final String? priority;
  OptEnumHolder({this.color, this.priority});
}

void writeOptEnumHolder(SpecWriter w, OptEnumHolder obj) {
  var fieldCount = 0;
  if (obj.color != null) fieldCount++;
  if (obj.priority != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.color != null) { w.writeField('color'); w.writeString(obj.color!); }
  if (obj.priority != null) { w.writeField('priority'); w.writeString(obj.priority!); }
  w.endObject();
}

final SpecCodec<OptEnumHolder> OptEnumHolderCodec = SpecCodec<OptEnumHolder>(
  encode: (w, obj) => writeOptEnumHolder(w, obj),
  decode: (r) {
    String? colorVal;
    String? priorityVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'color': colorVal = r.readString(); break;
        case 'priority': priorityVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptEnumHolder(color: colorVal, priority: priorityVal);
  },
);

class EnumArrayHolder {
  final List<String> colors;
  EnumArrayHolder({required this.colors});
}

void writeEnumArrayHolder(SpecWriter w, EnumArrayHolder obj) {
  w.beginObject(1);
  w.writeField('colors'); w.beginArray(obj.colors.length); for (final item in obj.colors) { w.nextElement(); w.writeString(item); } w.endArray();
  w.endObject();
}

final SpecCodec<EnumArrayHolder> EnumArrayHolderCodec = SpecCodec<EnumArrayHolder>(
  encode: (w, obj) => writeEnumArrayHolder(w, obj),
  decode: (r) {
    List<String> colorsVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'colors': colorsVal = () { final list = <String>[]; r.beginArray(); while (r.hasNextElement()) { list.add(r.readString()); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EnumArrayHolder(colors: colorsVal);
  },
);

class EnumMixedHolder {
  final String status;
  final String name;
  final int count;
  final bool active;
  EnumMixedHolder({required this.status, required this.name, required this.count, required this.active});
}

void writeEnumMixedHolder(SpecWriter w, EnumMixedHolder obj) {
  w.beginObject(4);
  w.writeField('status'); w.writeString(obj.status);
  w.writeField('name'); w.writeString(obj.name);
  w.writeField('count'); w.writeInt32(obj.count);
  w.writeField('active'); w.writeBool(obj.active);
  w.endObject();
}

final SpecCodec<EnumMixedHolder> EnumMixedHolderCodec = SpecCodec<EnumMixedHolder>(
  encode: (w, obj) => writeEnumMixedHolder(w, obj),
  decode: (r) {
    String statusVal = '';
    String nameVal = '';
    int countVal = 0;
    bool activeVal = false;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'status': statusVal = r.readString(); break;
        case 'name': nameVal = r.readString(); break;
        case 'count': countVal = r.readInt32(); break;
        case 'active': activeVal = r.readBool(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return EnumMixedHolder(status: statusVal, name: nameVal, count: countVal, active: activeVal);
  },
);
