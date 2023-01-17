import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'platform.g.dart';

@immutable
@JsonSerializable()
class Platform {
  final int id;
  final String name;
  final String slug;
  final int? gamesCount;
  final String? imageBackground;
  final String? image;
  final int? yearStart;
  final int? yearEnd;

  const Platform({
    required this.id,
    required this.name,
    required this.slug,
    this.gamesCount,
    this.imageBackground,
    this.image,
    this.yearStart,
    this.yearEnd,
  });

  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);
}
