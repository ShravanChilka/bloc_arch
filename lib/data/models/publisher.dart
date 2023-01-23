import 'dart:convert';
import 'package:bloc_arch/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'publisher.g.dart';

abstract class PublisherResult
    implements Built<PublisherResult, PublisherResultBuilder> {
  PublisherResult._();

  factory PublisherResult(Function(PublisherResultBuilder b) updates) =
      _$PublisherResult;

  static Serializer<PublisherResult> get serializer =>
      _$publisherResultSerializer;

  static PublisherResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      PublisherResult.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'results')
  BuiltList<Publisher> get publishers;
}

abstract class Publisher implements Built<Publisher, PublisherBuilder> {
  Publisher._();

  factory Publisher(Function(PublisherBuilder b) updates) = _$Publisher;

  static Serializer<Publisher> get serializer => _$publisherSerializer;

  static Publisher? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Publisher.serializer,
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
  static void _setDefaults(PublisherBuilder b) => b..isSelected = false;
}
