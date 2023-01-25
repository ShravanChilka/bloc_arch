import 'package:flutter/foundation.dart' show immutable;
import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class CreatorsState {
  final bool isLoading;
  final Failure? failure;
  final List<Creator>? creators;

  const CreatorsState({
    required this.isLoading,
    required this.failure,
    required this.creators,
  });

  CreatorsState copyWith({
    bool? isLoading,
    Failure? failure,
    List<Creator>? creators,
  }) {
    return CreatorsState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      creators: creators ?? this.creators,
    );
  }
}
