// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

import 'game.dart';

@immutable
class Platform extends Equatable {
  final int id;
  final String name;
  final String slug;
  final int? gamesCount;
  final String? imageBackground;
  final List<Game>? games;
  final String? image;
  final int? yearStart;
  final int? yearEnd;

  const Platform({
    required this.id,
    required this.name,
    required this.slug,
    this.gamesCount,
    this.imageBackground,
    this.games,
    this.image,
    this.yearStart,
    this.yearEnd,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      slug,
      gamesCount,
      imageBackground,
      games,
      image,
      yearStart,
      yearEnd,
    ];
  }
}
