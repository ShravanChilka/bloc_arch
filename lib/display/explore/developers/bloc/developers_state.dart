import 'package:flutter/foundation.dart' show immutable;
import 'package:equatable/equatable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class DevelopersState extends Equatable {
  final bool isLoading;
  final Failure? failure;
  final List<Developer>? developers;

  const DevelopersState({
    required this.isLoading,
    required this.failure,
    required this.developers,
  });

  @override
  List<Object?> get props => [isLoading, failure, developers];

  DevelopersState copyWith({
    bool? isLoading,
    Failure? failure,
    List<Developer>? developers,
  }) {
    return DevelopersState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      developers: developers ?? this.developers,
    );
  }
}
