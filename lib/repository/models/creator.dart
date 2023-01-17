import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'creator.g.dart';

@JsonSerializable()
@immutable
class Creator {
  final int id;
  final String name;
  final String slug;
  final String image;
  final String imageBackground;
  final int gamesCount;

  const Creator({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.imageBackground,
    required this.gamesCount,
  });

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);
}
