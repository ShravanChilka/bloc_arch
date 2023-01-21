import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/added_by_status.dart';
part 'added_by_status_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AddedByStatusModel extends AddedByStatus {
  AddedByStatusModel({
    required super.owned,
    super.beaten,
    super.dropped,
    super.playing,
    super.toplay,
    super.yet,
  });

  factory AddedByStatusModel.fromJson(Map<String, dynamic> json) =>
      _$AddedByStatusModelFromJson(json);
}
