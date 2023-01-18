import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
part 'esrb_rating.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class EsrbRating {
  final int id;
  final String name;
  final String slug;
  final String? nameEn;
  final String? nameRu;

  const EsrbRating({
    required this.id,
    required this.name,
    required this.slug,
    this.nameEn,
    this.nameRu,
  });

  factory EsrbRating.fromJson(Map<String, dynamic> json) =>
      _$EsrbRatingFromJson(json);

  @override
  String toString() {
    return 'EsrbRating(id: $id, name: $name, slug: $slug, nameEn: $nameEn, nameRu: $nameRu)';
  }
}
