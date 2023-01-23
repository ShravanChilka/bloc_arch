import 'package:flutter/foundation.dart' show immutable;
import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class GenresState {
  final bool isLoading;
  final Failure? failure;
  final List<Genre>? genres;

  const GenresState({
    required this.isLoading,
    required this.failure,
    required this.genres,
  });

  GenresState copyWith({
    bool? isLoading,
    Failure? failure,
    List<Genre>? genres,
  }) {
    return GenresState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      genres: genres ?? this.genres,
    );
  }
}
