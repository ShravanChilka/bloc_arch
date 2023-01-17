import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'added_by_status.g.dart';

@JsonSerializable()
@immutable
class AddedByStatus {
  final int yet;
  final int owned;
  final int beaten;
  final int toplay;
  final int dropped;
  final int playing;

  const AddedByStatus({
    required this.yet,
    required this.owned,
    required this.beaten,
    required this.toplay,
    required this.dropped,
    required this.playing,
  });

  factory AddedByStatus.fromJson(Map<String, dynamic> json) =>
      _$AddedByStatusFromJson(json);
}
