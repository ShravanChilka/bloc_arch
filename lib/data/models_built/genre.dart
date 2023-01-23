import 'dart:convert';

import 'package:bloc_arch/data/models_built/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'genre.g.dart';

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
  int get name;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'games_count')
  int? get gamesCount;
  @BuiltValueField(wireName: 'image_background')
  String? get imageBackground;
}
