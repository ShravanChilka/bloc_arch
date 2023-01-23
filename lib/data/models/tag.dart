import 'dart:convert';
import 'package:built_collection/built_collection.dart';

import 'serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'tag.g.dart';

abstract class TagResult implements Built<TagResult, TagResultBuilder> {
  TagResult._();

  factory TagResult(Function(TagResultBuilder b) updates) = _$TagResult;

  static Serializer<TagResult> get serializer => _$tagResultSerializer;

  static TagResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      TagResult.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'results')
  BuiltList<Tag> get tags;
}

abstract class Tag implements Built<Tag, TagBuilder> {
  Tag._();

  factory Tag(Function(TagBuilder b) updates) = _$Tag;

  static Serializer<Tag> get serializer => _$tagSerializer;

  static Tag? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Tag.serializer,
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
  int? get gamesCount;
  @BuiltValueField(wireName: 'image_background')
  String? get imageBackground;
}
