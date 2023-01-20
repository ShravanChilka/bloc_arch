import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show JsonSerializable, FieldRename;
import '../entities/short_screenshot.dart';
part 'short_screenshot_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class ShortScreenshotModel extends ShortScreenshot {
  const ShortScreenshotModel({
    required super.id,
    required super.image,
  });

  factory ShortScreenshotModel.fromJson(Map<String, dynamic> json) =>
      _$ShortScreenshotModelFromJson(json);
}
