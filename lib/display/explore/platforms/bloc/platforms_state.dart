import 'package:flutter/foundation.dart' show immutable;
import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class PlatformsState {
  final bool isLoading;
  final Failure? failure;
  final List<Platform>? platforms;

  const PlatformsState({
    required this.isLoading,
    required this.failure,
    required this.platforms,
  });

  PlatformsState copyWith({
    bool? isLoading,
    Failure? failure,
    List<Platform>? platforms,
  }) {
    return PlatformsState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      platforms: platforms ?? this.platforms,
    );
  }
}
