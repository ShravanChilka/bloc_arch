import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'developer.g.dart';

@immutable
@JsonSerializable()
class Developer {
  final int id;
  final String name;
  final String slug;
  final int gamesCount;
  final String imageBackground;

  const Developer({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);
}
