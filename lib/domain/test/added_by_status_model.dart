import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/added_by_status.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class AddedByStatusModel extends AddedByStatus {
  const AddedByStatusModel({
    required super.owned,
  });

  factory AddedByStatusModel.fromJson(Map<String, dynamic> json) =>
      _$AddedByStatusModelFromJson(json);
}
