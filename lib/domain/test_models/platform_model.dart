// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/platform.dart';
part 'platform_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class PlatformModel extends Platform {
  const PlatformModel({
    required super.id,
    required super.name,
    required super.slug,
  });

  factory PlatformModel.fromJson(Map<String, dynamic> json) =>
      _$PlatformModelFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class PlatformModelResult {
  final PlatformModel platform;

  const PlatformModelResult({
    required this.platform,
  });

  factory PlatformModelResult.fromJson(Map<String, dynamic> json) =>
      _$PlatformModelResultFromJson(json);
}
