import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'genre.g.dart';

abstract class GenreResult implements Built<GenreResult, GenreResultBuilder> {
  GenreResult._();

  factory GenreResult(Function(GenreResultBuilder b) updates) = _$GenreResult;

  static Serializer<GenreResult> get serializer => _$genreResultSerializer;

  static GenreResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      GenreResult.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'results')
  BuiltList<Genre> get genres;
}

abstract class Genre implements Built<Genre, GenreBuilder> {
  Genre._();

  factory Genre(Function(GenreBuilder b) updates) = _$Genre;

  static Serializer<Genre> get serializer => _$genreSerializer;

  static Genre? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Genre.serializer,
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

  bool get isSelected;
  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(GenreBuilder b) => b..isSelected = false;
}
