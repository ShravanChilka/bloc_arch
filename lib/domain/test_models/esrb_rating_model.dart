import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/esrb_rating.dart';
part 'esrb_rating_model.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class EsrbRatingModel extends EsrbRating {
  const EsrbRatingModel({
    required super.id,
    required super.name,
    required super.slug,
  });

  factory EsrbRatingModel.fromJson(Map<String, dynamic> json) =>
      _$EsrbRatingModelFromJson(json);
}
