import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'esrb_rating.g.dart';

@JsonSerializable()
@immutable
class EsrbRating {
  final int id;
  final String name;
  final String slug;
  final String nameEn;
  final String nameRu;

  const EsrbRating({
    required this.id,
    required this.name,
    required this.slug,
    required this.nameEn,
    required this.nameRu,
  });

  factory EsrbRating.fromJson(Map<String, dynamic> json) =>
      _$EsrbRatingFromJson(json);
}
