import 'dart:convert';

import 'serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'short_screenshot.g.dart';

abstract class ShortScreenshot
    implements Built<ShortScreenshot, ShortScreenshotBuilder> {
  ShortScreenshot._();

  factory ShortScreenshot(Function(ShortScreenshotBuilder b) updates) =
      _$ShortScreenshot;

  static Serializer<ShortScreenshot> get serializer =>
      _$shortScreenshotSerializer;

  static ShortScreenshot? fromJson(String jsonString) {
    return serializers.deserializeWith(
      ShortScreenshot.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'image')
  String get image;
}
