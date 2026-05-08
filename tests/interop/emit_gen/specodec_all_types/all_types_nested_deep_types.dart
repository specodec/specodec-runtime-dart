library specodec_all_types;

import 'dart:typed_data';
import 'package:specodec/specodec.dart';
import 'all_types.dart';

class DeepModel {
  final Uint8List payload;
  final BigInt count;
  DeepModel({required this.payload, required this.count});
}

void writeDeepModel(SpecWriter w, DeepModel obj) {
  w.beginObject(2);
  w.writeField('payload'); w.writeBytes(obj.payload);
  w.writeField('count'); w.writeInt64(obj.count);
  w.endObject();
}

final SpecCodec<DeepModel> DeepModelCodec = SpecCodec<DeepModel>(
  encode: (w, obj) => writeDeepModel(w, obj),
  decode: (r) {
    Uint8List payloadVal = Uint8List(0);
    BigInt countVal = BigInt.zero;
    r.beginObject();
    while (r.hasNextField()) {
      switch (r.readFieldName()) {
        case 'payload': payloadVal = r.readBytes(); break;
        case 'count': countVal = r.readInt64(); break;
        default: r.skip();
      }
    }
    r.endObject();
    return DeepModel(payload: payloadVal, count: countVal);
  },
);
