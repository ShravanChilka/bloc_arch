import 'dart:convert';

import 'package:bloc_arch/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'creator.g.dart';

abstract class CreatorResult
    implements Built<CreatorResult, CreatorResultBuilder> {
  CreatorResult._();

  factory CreatorResult(Function(CreatorResultBuilder b) updates) =
      _$CreatorResult;

  static Serializer<CreatorResult> get serializer => _$creatorResultSerializer;

  static CreatorResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      CreatorResult.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'results')
  BuiltList<Creator> get creators;
}

abstract class Creator implements Built<Creator, CreatorBuilder> {
  Creator._();

  factory Creator(Function(CreatorBuilder b) updates) = _$Creator;

  static Serializer<Creator> get serializer => _$creatorSerializer;

  static Creator? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Creator.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'image')
  String? get image;
  @BuiltValueField(wireName: 'image_background')
  String? get imageBackground;
  @BuiltValueField(wireName: 'games_count')
  int? get gamesCount;

  bool get isSelected;
  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(CreatorBuilder b) => b..isSelected = false;
}
