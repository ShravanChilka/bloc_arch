import 'dart:convert';

import 'package:bloc_arch/data/models_built/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'esrb_rating.g.dart';

abstract class EsrbRating implements Built<EsrbRating, EsrbRatingBuilder> {
  EsrbRating._();

  factory EsrbRating(Function(EsrbRatingBuilder b) updates) = _$EsrbRating;

  static Serializer<EsrbRating> get serializer => _$esrbRatingSerializer;

  static EsrbRating? fromJson(String jsonString) {
    return serializers.deserializeWith(
      EsrbRating.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'slug')
  String get slug;
}
