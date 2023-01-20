import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/rating.dart';
part 'rating_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class RatingModel extends Rating {
  const RatingModel({
    required super.id,
    required super.title,
    required super.count,
    required super.percent,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class RatingModelResult {
  final int count;
  final List<RatingModel> results;

  const RatingModelResult({
    required this.count,
    required this.results,
  });

  factory RatingModelResult.fromJson(Map<String, dynamic> json) =>
      _$RatingModelResultFromJson.fromJson(json);
}
