import 'dart:convert';
import 'package:bloc_arch/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'developer.g.dart';

abstract class DeveloperResult
    implements Built<DeveloperResult, DeveloperResultBuilder> {
  DeveloperResult._();

  factory DeveloperResult(Function(DeveloperResultBuilder b) updates) =
      _$DeveloperResult;

  static Serializer<DeveloperResult> get serializer =>
      _$developerResultSerializer;

  static DeveloperResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      DeveloperResult.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'results')
  BuiltList<Developer> get developers;
}

abstract class Developer implements Built<Developer, DeveloperBuilder> {
  Developer._();

  factory Developer(Function(DeveloperBuilder b) updates) = _$Developer;

  static Serializer<Developer> get serializer => _$developerSerializer;

  static Developer? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Developer.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'image_background')
  String? get imageBackground;
  @BuiltValueField(wireName: 'games_count')
  int? get gamesCount;

  bool get isSelected;
  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(DeveloperBuilder b) => b..isSelected = false;
}
