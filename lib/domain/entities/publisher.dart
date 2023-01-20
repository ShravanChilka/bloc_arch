import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Publisher extends Equatable {
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

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        gamesCount,
        imageBackground,
      ];
}
