import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
import 'game.dart';
part 'platform.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Platform {
  final int id;
  final String name;
  final String slug;

  const Platform({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);

  @override
  String toString() => 'Platform(id: $id, name: $name, slug: $slug)';
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class PlatformResult {
  final Platform platform;

  const PlatformResult({
    required this.platform,
  });

  factory PlatformResult.fromJson(Map<String, dynamic> json) =>
      _$PlatformResultFromJson(json);

  @override
  String toString() => 'PlatformResult(platform: $platform)';
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class PlatformDetails {
  final int id;
  final String name;
  final String slug;
  final int gamesCount;
  final String imageBackground;
  final List<Game>? games;
  final String? image;
  final int? yearStart;
  final int? yearEnd;

  const PlatformDetails({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    this.games,
    this.image,
    this.yearStart,
    this.yearEnd,
  });

  factory PlatformDetails.fromJson(Map<String, dynamic> json) =>
      _$PlatformDetailsFromJson(json);

  @override
  String toString() {
    return 'PlatformDetails(id: $id, name: $name, slug: $slug, gamesCount: $gamesCount, imageBackground: $imageBackground, games: $games, image: $image, yearStart: $yearStart, yearEnd: $yearEnd)';
  }
}
