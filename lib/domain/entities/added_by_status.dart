import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class AddedByStatus extends Equatable {
  int owned;
  int? yet;
  int? beaten;
  int? toplay;
  int? dropped;
  int? playing;

  AddedByStatus({
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
