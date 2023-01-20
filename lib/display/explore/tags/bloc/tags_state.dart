import 'package:flutter/foundation.dart' show immutable;
import 'package:equatable/equatable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../data/models/models_export.dart';

@immutable
class TagsState extends Equatable {
  final bool isLoading;
  final Failure? failure;
  final List<Tag>? tags;

  const TagsState({
    required this.isLoading,
    required this.failure,
    required this.tags,
  });

  @override
  List<Object?> get props => [isLoading, failure, tags];

  TagsState copyWith({
    bool? isLoading,
    Failure? failure,
    List<Tag>? tags,
  }) {
    return TagsState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      tags: tags ?? this.tags,
    );
  }
}
