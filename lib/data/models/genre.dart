import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
part 'genre.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Genre {
  final int id;
  final String name;
  final String slug;
  final int? gamesCount;
  final String? imageBackground;

  const Genre({
    required this.id,
    required this.name,
    required this.slug,
    this.gamesCount,
    this.imageBackground,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  @override
  String toString() {
    return 'Genre(id: $id, name: $name, slug: $slug, gamesCount: $gamesCount, imageBackground: $imageBackground)';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class GenreResult {
  final List<Genre> results;

  const GenreResult({
    required this.results,
  });

  factory GenreResult.fromJson(Map<String, dynamic> json) =>
      _$GenreResultFromJson(json);

  @override
  String toString() => 'GenreResult(results: $results)';
}
