// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class AddedByStatus extends Equatable {
  final int owned;
  final int? yet;
  final int? beaten;
  final int? toplay;
  final int? dropped;
  final int? playing;

  const AddedByStatus({
    required this.owned,
    this.yet,
    this.beaten,
    this.toplay,
    this.dropped,
    this.playing,
  });

  @override
  List<Object?> get props => [
        owned,
        yet,
        beaten,
        toplay,
        dropped,
        playing,
      ];
}
