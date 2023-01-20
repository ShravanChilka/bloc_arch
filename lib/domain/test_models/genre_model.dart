import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/genre.dart';
part 'genre_model.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class GenreModel extends Genre {
  const GenreModel({
    required super.id,
    required super.name,
    required super.slug,
  });

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}
