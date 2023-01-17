import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'short_screenshot.g.dart';

@JsonSerializable()
@immutable
class ShortScreenshot {
  final int id;
  final String image;

  const ShortScreenshot({
    required this.id,
    required this.image,
  });

  factory ShortScreenshot.fromJson(Map<String, dynamic> json) =>
      _$ShortScreenshotFromJson(json);
}
