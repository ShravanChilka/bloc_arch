import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
part 'tag.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Tag {
  final int id;
  final String name;
  final String slug;
  final int gamesCount;
  final String imageBackground;
  final String language;

  const Tag({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    required this.language,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  @override
  String toString() {
    return 'Tag(id: $id, name: $name, slug: $slug, gamesCount: $gamesCount, imageBackground: $imageBackground, language: $language)';
  }
}
