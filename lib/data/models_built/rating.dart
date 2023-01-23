import 'dart:convert';

import 'package:bloc_arch/data/models_built/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'rating.g.dart';

abstract class Rating implements Built<Rating, RatingBuilder> {
  Rating._();
  factory Rating(Function(RatingBuilder b) updates) = _$Rating;

  static Serializer<Rating> get serializer => _$ratingSerializer;

  static Rating? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Rating.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'percent')
  double get percent;
}
