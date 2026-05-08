library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class UnionFieldHolder {
  final Shape shape;
  final Ident id;
  UnionFieldHolder({required this.shape, required this.id});
}

void writeUnionFieldHolder(SpecWriter w, UnionFieldHolder obj) {
  w.beginObject(2);
  w.writeField('shape'); writeShape(w, obj.shape);
  w.writeField('id'); writeIdent(w, obj.id);
  w.endObject();
}

final SpecCodec<UnionFieldHolder> UnionFieldHolderCodec = SpecCodec<UnionFieldHolder>(
  encode: (w, obj) => writeUnionFieldHolder(w, obj),
  decode: (r) {
    late Shape shapeVal;
    late Ident idVal;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'shape': shapeVal = decodeShape(r); break;
        case 'id': idVal = decodeIdent(r); break;
        default: r.skip();
      }
    }
    r.endObject();
    return UnionFieldHolder(shape: shapeVal, id: idVal);
  },
);

class OptUnionFieldHolder {
  final Shape? shape;
  final String name;
  OptUnionFieldHolder({this.shape, required this.name});
}

void writeOptUnionFieldHolder(SpecWriter w, OptUnionFieldHolder obj) {
  var fieldCount = 1;
  if (obj.shape != null) fieldCount++;
  w.beginObject(fieldCount);
  if (obj.shape != null) { w.writeField('shape'); writeShape(w, obj.shape!); }
  w.writeField('name'); w.writeString(obj.name);
  w.endObject();
}

final SpecCodec<OptUnionFieldHolder> OptUnionFieldHolderCodec = SpecCodec<OptUnionFieldHolder>(
  encode: (w, obj) => writeOptUnionFieldHolder(w, obj),
  decode: (r) {
    Shape? shapeVal;
    String nameVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'shape': shapeVal = decodeShape(r); break;
        case 'name': nameVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return OptUnionFieldHolder(shape: shapeVal, name: nameVal);
  },
);

class UnionArrayHolder {
  final List<Shape> shapes;
  UnionArrayHolder({required this.shapes});
}

void writeUnionArrayHolder(SpecWriter w, UnionArrayHolder obj) {
  w.beginObject(1);
  w.writeField('shapes'); w.beginArray(obj.shapes.length); for (final item in obj.shapes) { w.nextElement(); writeShape(w, item); } w.endArray();
  w.endObject();
}

final SpecCodec<UnionArrayHolder> UnionArrayHolderCodec = SpecCodec<UnionArrayHolder>(
  encode: (w, obj) => writeUnionArrayHolder(w, obj),
  decode: (r) {
    List<Shape> shapesVal = [];
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'shapes': shapesVal = () { final list = <Shape>[]; r.beginArray(); while (r.hasNextElement()) { list.add(decodeShape(r)); } r.endArray(); return list; }(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return UnionArrayHolder(shapes: shapesVal);
  },
);

class UnionMixedHolder {
  final ResultMsg result;
  final Tagged tag;
  final int count;
  UnionMixedHolder({required this.result, required this.tag, required this.count});
}

void writeUnionMixedHolder(SpecWriter w, UnionMixedHolder obj) {
  w.beginObject(3);
  w.writeField('result'); writeResultMsg(w, obj.result);
  w.writeField('tag'); writeTagged(w, obj.tag);
  w.writeField('count'); w.writeInt32(obj.count);
  w.endObject();
}

final SpecCodec<UnionMixedHolder> UnionMixedHolderCodec = SpecCodec<UnionMixedHolder>(
  encode: (w, obj) => writeUnionMixedHolder(w, obj),
  decode: (r) {
    late ResultMsg resultVal;
    late Tagged tagVal;
    int countVal = 0;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'result': resultVal = decodeResultMsg(r); break;
        case 'tag': tagVal = decodeTagged(r); break;
        case 'count': countVal = r.readInt32(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return UnionMixedHolder(result: resultVal, tag: tagVal, count: countVal);
  },
);

class UnionScalarHolder {
  final Ident id;
  final ScalarUnion sc;
  final String label;
  UnionScalarHolder({required this.id, required this.sc, required this.label});
}

void writeUnionScalarHolder(SpecWriter w, UnionScalarHolder obj) {
  w.beginObject(3);
  w.writeField('id'); writeIdent(w, obj.id);
  w.writeField('sc'); writeScalarUnion(w, obj.sc);
  w.writeField('label'); w.writeString(obj.label);
  w.endObject();
}

final SpecCodec<UnionScalarHolder> UnionScalarHolderCodec = SpecCodec<UnionScalarHolder>(
  encode: (w, obj) => writeUnionScalarHolder(w, obj),
  decode: (r) {
    late Ident idVal;
    late ScalarUnion scVal;
    String labelVal = '';
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'id': idVal = decodeIdent(r); break;
        case 'sc': scVal = decodeScalarUnion(r); break;
        case 'label': labelVal = r.readString(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return UnionScalarHolder(id: idVal, sc: scVal, label: labelVal);
  },
);

sealed class Shape {}

class ShapeCircle extends Shape {
  final Coord value;
  ShapeCircle(this.value);
}

class ShapeRect extends Shape {
  final Range32 value;
  ShapeRect(this.value);
}

void writeShape(SpecWriter w, Shape obj) {
  w.beginObject(1);
  switch (obj) {
    case ShapeCircle(:final value): w.writeField("circle"); CoordCodec.encode(w, value); break;
    case ShapeRect(:final value): w.writeField("rect"); Range32Codec.encode(w, value); break;
  }
  w.endObject();
}

Shape decodeShape(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  Shape result;
  switch (field) {
    case "circle": result = ShapeCircle(CoordCodec.decode(r)); break;
    case "rect": result = ShapeRect(Range32Codec.decode(r)); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final ShapeCodec = SpecCodec<Shape>(encode: writeShape, decode: decodeShape);

sealed class Ident {}

class IdentName extends Ident {
  final String value;
  IdentName(this.value);
}

class IdentNumber extends Ident {
  final int value;
  IdentNumber(this.value);
}

void writeIdent(SpecWriter w, Ident obj) {
  w.beginObject(1);
  switch (obj) {
    case IdentName(:final value): w.writeField("name"); w.writeString(value); break;
    case IdentNumber(:final value): w.writeField("number"); w.writeInt32(value); break;
  }
  w.endObject();
}

Ident decodeIdent(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  Ident result;
  switch (field) {
    case "name": result = IdentName(r.readString()); break;
    case "number": result = IdentNumber(r.readInt32()); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final IdentCodec = SpecCodec<Ident>(encode: writeIdent, decode: decodeIdent);

sealed class ResultMsg {}

class ResultMsgOk extends ResultMsg {
  final String value;
  ResultMsgOk(this.value);
}

class ResultMsgErr extends ResultMsg {
  final Label value;
  ResultMsgErr(this.value);
}

void writeResultMsg(SpecWriter w, ResultMsg obj) {
  w.beginObject(1);
  switch (obj) {
    case ResultMsgOk(:final value): w.writeField("ok"); w.writeString(value); break;
    case ResultMsgErr(:final value): w.writeField("err"); LabelCodec.encode(w, value); break;
  }
  w.endObject();
}

ResultMsg decodeResultMsg(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  ResultMsg result;
  switch (field) {
    case "ok": result = ResultMsgOk(r.readString()); break;
    case "err": result = ResultMsgErr(LabelCodec.decode(r)); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final ResultMsgCodec = SpecCodec<ResultMsg>(encode: writeResultMsg, decode: decodeResultMsg);

sealed class Tagged {}

class TaggedTag extends Tagged {
  final String value;
  TaggedTag(this.value);
}

class TaggedScore extends Tagged {
  final double value;
  TaggedScore(this.value);
}

class TaggedActive extends Tagged {
  final bool value;
  TaggedActive(this.value);
}

void writeTagged(SpecWriter w, Tagged obj) {
  w.beginObject(1);
  switch (obj) {
    case TaggedTag(:final value): w.writeField("tag"); w.writeString(value); break;
    case TaggedScore(:final value): w.writeField("score"); w.writeFloat64(value); break;
    case TaggedActive(:final value): w.writeField("active"); w.writeBool(value); break;
  }
  w.endObject();
}

Tagged decodeTagged(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  Tagged result;
  switch (field) {
    case "tag": result = TaggedTag(r.readString()); break;
    case "score": result = TaggedScore(r.readFloat64()); break;
    case "active": result = TaggedActive(r.readBool()); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final TaggedCodec = SpecCodec<Tagged>(encode: writeTagged, decode: decodeTagged);

sealed class ScalarUnion {}

class ScalarUnionS extends ScalarUnion {
  final String value;
  ScalarUnionS(this.value);
}

class ScalarUnionI extends ScalarUnion {
  final int value;
  ScalarUnionI(this.value);
}

class ScalarUnionF extends ScalarUnion {
  final double value;
  ScalarUnionF(this.value);
}

class ScalarUnionB extends ScalarUnion {
  final bool value;
  ScalarUnionB(this.value);
}

void writeScalarUnion(SpecWriter w, ScalarUnion obj) {
  w.beginObject(1);
  switch (obj) {
    case ScalarUnionS(:final value): w.writeField("s"); w.writeString(value); break;
    case ScalarUnionI(:final value): w.writeField("i"); w.writeInt32(value); break;
    case ScalarUnionF(:final value): w.writeField("f"); w.writeFloat64(value); break;
    case ScalarUnionB(:final value): w.writeField("b"); w.writeBool(value); break;
  }
  w.endObject();
}

ScalarUnion decodeScalarUnion(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  ScalarUnion result;
  switch (field) {
    case "s": result = ScalarUnionS(r.readString()); break;
    case "i": result = ScalarUnionI(r.readInt32()); break;
    case "f": result = ScalarUnionF(r.readFloat64()); break;
    case "b": result = ScalarUnionB(r.readBool()); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final ScalarUnionCodec = SpecCodec<ScalarUnion>(encode: writeScalarUnion, decode: decodeScalarUnion);

sealed class OptUnionHolder {}

class OptUnionHolderShape extends OptUnionHolder {
  final Shape value;
  OptUnionHolderShape(this.value);
}

class OptUnionHolderId extends OptUnionHolder {
  final Ident value;
  OptUnionHolderId(this.value);
}

void writeOptUnionHolder(SpecWriter w, OptUnionHolder obj) {
  w.beginObject(1);
  switch (obj) {
    case OptUnionHolderShape(:final value): w.writeField("shape"); writeShape(w, value); break;
    case OptUnionHolderId(:final value): w.writeField("id"); writeIdent(w, value); break;
  }
  w.endObject();
}

OptUnionHolder decodeOptUnionHolder(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  OptUnionHolder result;
  switch (field) {
    case "shape": result = OptUnionHolderShape(decodeShape(r)); break;
    case "id": result = OptUnionHolderId(decodeIdent(r)); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final OptUnionHolderCodec = SpecCodec<OptUnionHolder>(encode: writeOptUnionHolder, decode: decodeOptUnionHolder);

sealed class MixedUnion {}

class MixedUnionPoint extends MixedUnion {
  final Coord value;
  MixedUnionPoint(this.value);
}

class MixedUnionLabel extends MixedUnion {
  final String value;
  MixedUnionLabel(this.value);
}

class MixedUnionCount extends MixedUnion {
  final int value;
  MixedUnionCount(this.value);
}

void writeMixedUnion(SpecWriter w, MixedUnion obj) {
  w.beginObject(1);
  switch (obj) {
    case MixedUnionPoint(:final value): w.writeField("point"); CoordCodec.encode(w, value); break;
    case MixedUnionLabel(:final value): w.writeField("label"); w.writeString(value); break;
    case MixedUnionCount(:final value): w.writeField("count"); w.writeInt32(value); break;
  }
  w.endObject();
}

MixedUnion decodeMixedUnion(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  MixedUnion result;
  switch (field) {
    case "point": result = MixedUnionPoint(CoordCodec.decode(r)); break;
    case "label": result = MixedUnionLabel(r.readString()); break;
    case "count": result = MixedUnionCount(r.readInt32()); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final MixedUnionCodec = SpecCodec<MixedUnion>(encode: writeMixedUnion, decode: decodeMixedUnion);

sealed class NestedUnion {}

class NestedUnionResult extends NestedUnion {
  final ResultMsg value;
  NestedUnionResult(this.value);
}

class NestedUnionShape extends NestedUnion {
  final Shape value;
  NestedUnionShape(this.value);
}

void writeNestedUnion(SpecWriter w, NestedUnion obj) {
  w.beginObject(1);
  switch (obj) {
    case NestedUnionResult(:final value): w.writeField("result"); writeResultMsg(w, value); break;
    case NestedUnionShape(:final value): w.writeField("shape"); writeShape(w, value); break;
  }
  w.endObject();
}

NestedUnion decodeNestedUnion(SpecReader r) {
  r.beginObject();
  if (!r.hasNextField()) { r.endObject(); throw Exception("empty union"); }
  final field = r.readFieldName();
  NestedUnion result;
  switch (field) {
    case "result": result = NestedUnionResult(decodeResultMsg(r)); break;
    case "shape": result = NestedUnionShape(decodeShape(r)); break;
    default: throw Exception("unknown variant $field");
  }
  while (r.hasNextField()) { r.readFieldName(); r.skip(); }
  r.endObject();
  return result;
}

final NestedUnionCodec = SpecCodec<NestedUnion>(encode: writeNestedUnion, decode: decodeNestedUnion);
