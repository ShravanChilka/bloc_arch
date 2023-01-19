import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
part 'added_by_status.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class AddedByStatus {
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

  factory AddedByStatus.fromJson(Map<String, dynamic> json) =>
      _$AddedByStatusFromJson(json);

  @override
  String toString() {
    return 'AddedByStatus(yet: $yet, owned: $owned, beaten: $beaten, toplay: $toplay, dropped: $dropped, playing: $playing)';
  }
}
