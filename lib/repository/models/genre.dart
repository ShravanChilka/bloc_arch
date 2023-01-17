import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'genre.g.dart';

@immutable
@JsonSerializable()
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
}
