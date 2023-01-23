import 'dart:convert';

import 'package:bloc_arch/data/models_built/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'platform.g.dart';

abstract class PlatformResult
    implements Built<PlatformResult, PlatformResultBuilder> {
  PlatformResult._();

  factory PlatformResult(Function(PlatformResultBuilder b) updates) =
      _$PlatformResult;

  static Serializer<PlatformResult> get serializer =>
      _$platformResultSerializer;

  static PlatformResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      PlatformResult.serializer,
      json.decode(jsonString),
    );
  }

  Platform get platform;
}

abstract class Platform implements Built<Platform, PlatformBuilder> {
  Platform._();

  factory Platform(Function(PlatformBuilder b) updates) = _$Platform;

  static Serializer<Platform> get serializer => _$platformSerializer;

  static Platform? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Platform.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'games_count')
  String? get gamesCount;
  @BuiltValueField(wireName: 'image_background')
  String? get imageBackground;
  @BuiltValueField(wireName: 'year_start')
  String? get yearStart;
  @BuiltValueField(wireName: 'year_end')
  String? get yearEnd;
}
