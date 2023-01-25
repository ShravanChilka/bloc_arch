import 'package:flutter/foundation.dart' show immutable;
import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class PublishersState {
  final bool isLoading;
  final Failure? failure;
  final List<Publisher>? publishers;

  const PublishersState({
    required this.isLoading,
    required this.failure,
    required this.publishers,
  });

  PublishersState copyWith({
    bool? isLoading,
    Failure? failure,
    List<Publisher>? publishers,
  }) {
    return PublishersState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      publishers: publishers ?? this.publishers,
    );
  }
}
