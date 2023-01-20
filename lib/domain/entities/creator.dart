import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Creator extends Equatable {
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

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        image,
        imageBackground,
        gamesCount,
      ];
}
