import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class GamesState extends Equatable {
  final bool isLoading;
  final Failure? failure;
  final List<GameDetails>? games;
  final List<Genre>? genres;
  final List<Tag>? tags;

  const GamesState({
    required this.isLoading,
    required this.failure,
    required this.games,
    required this.genres,
    required this.tags,
  });

  @override
  List<Object?> get props => [isLoading, failure, games, genres, tags];

  GamesState copyWith({
    bool? isLoading,
    Failure? failure,
    List<GameDetails>? games,
    List<Genre>? genres,
    List<Tag>? tags,
  }) {
    return GamesState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      games: games ?? this.games,
      genres: genres ?? this.genres,
      tags: tags ?? this.tags,
    );
  }
}
