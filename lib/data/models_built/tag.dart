import 'dart:convert';
import 'package:bloc_arch/data/models_built/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'tag.g.dart';

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
