import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'publisher.g.dart';

@immutable
@JsonSerializable()
class Publisher {
  final int id;
  final String name;
  final String slug;
  final int gamesCount;
  final String imageBackground;

  const Publisher({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });

  factory Publisher.fromJson(Map<String, dynamic> json) =>
      _$PublisherFromJson(json);
}
