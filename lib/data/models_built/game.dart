import 'dart:convert';

import 'package:bloc_arch/data/models_built/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'rating.dart';
import 'added_by_status.dart';
import 'platform.dart';
import 'genre.dart';
import 'store.dart';
import 'tag.dart';
import 'esrb_rating.dart';
import 'short_screenshot.dart';
part 'game.g.dart';

abstract class GameResult implements Built<GameResult, GameResultBuilder> {
  GameResult._();

  factory GameResult(Function(GameResultBuilder b) updates) = _$GameResult;

  BuiltList<Game> get results;

  static GameResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      GameResult.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<GameResult> get serializer => _$gameResultSerializer;
}

abstract class Game implements Built<Game, GameBuilder> {
  Game._();

  factory Game(Function(GameBuilder b) updates) = _$Game;

  static Serializer<Game> get serializer => _$gameSerializer;

  static Game? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Game.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'background_image')
  String? get backgroundImage;
  @BuiltValueField(wireName: 'rating')
  double? get rating;
  @BuiltValueField(wireName: 'rating_top')
  int? get ratingTop;
  @BuiltValueField(wireName: 'ratings')
  BuiltList<Rating>? get ratings;
  @BuiltValueField(wireName: 'ratings_count')
  int? get ratingsCount;
  @BuiltValueField(wireName: 'reviews_text_count')
  int? get reviewsTextCount;
  @BuiltValueField(wireName: 'added')
  int? get added;
  @BuiltValueField(wireName: 'added_by_status')
  AddedByStatus? get addedByStatus;
  @BuiltValueField(wireName: 'metacritic')
  int? get metacritc;
  @BuiltValueField(wireName: 'playtime')
  int? get playtime;
  @BuiltValueField(wireName: 'updated')
  String? get updated;
  @BuiltValueField(wireName: 'reviews_count')
  int get reviewsCount;
  @BuiltValueField(wireName: 'platforms')
  BuiltList<PlatformResult>? get platforms;
  @BuiltValueField(wireName: 'parent_platforms')
  BuiltList<PlatformResult>? get parentPlatforms;
  @BuiltValueField(wireName: 'genres')
  BuiltList<Genre>? get genres;
  @BuiltValueField(wireName: 'stores')
  BuiltList<StoreResult>? get stores;
  @BuiltValueField(wireName: 'tags')
  BuiltList<Tag>? get tags;
  @BuiltValueField(wireName: 'esrb_rating')
  EsrbRating? get esrbRating;
  @BuiltValueField(wireName: 'short_screenshots')
  BuiltList<ShortScreenshot>? get shortScreenshots;
}
