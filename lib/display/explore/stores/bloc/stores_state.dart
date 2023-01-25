import 'package:flutter/foundation.dart' show immutable;
import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class StoresState {
  final bool isLoading;
  final Failure? failure;
  final List<Store>? stores;

  const StoresState({
    required this.isLoading,
    required this.failure,
    required this.stores,
  });

  StoresState copyWith({
    bool? isLoading,
    Failure? failure,
    List<Store>? stores,
  }) {
    return StoresState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      stores: stores ?? this.stores,
    );
  }
}
