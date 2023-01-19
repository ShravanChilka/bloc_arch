import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
import 'added_by_status.dart';
import 'platform.dart';
import 'short_screenshot.dart';
import 'tag.dart';
import 'rating.dart';
import 'esrb_rating.dart';
import 'store.dart';
import 'genre.dart';
part 'game.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class Game {
  final int id;
  final String slug;
  final String name;
  final int added;

  const Game({
    required this.id,
    required this.slug,
    required this.name,
    required this.added,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  @override
  String toString() {
    return 'Game(id: $id, slug: $slug, name: $name, added: $added)';
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class GameDetails {
  final int id;
  final String slug;
  final String name;
  final int added;
  final String? released;
  final bool tba;
  final String? backgroundImage;
  final double rating;
  final int ratingTop;
  final List<Rating> ratings;
  final AddedByStatus? addedByStatus;
  final int ratingsCount;
  final int? metacritic;
  final int suggestionsCount;
  final int playtime;
  final String updated;
  final List<PlatformResult> platforms;
  final List<StoreResult>? stores;
  final int reviewsCount;
  final int reviewsTextCount;
  final List<Tag> tags;
  final EsrbRating? esrbRating;
  final List<ShortScreenshot>? shortScreenshots;
  final List<PlatformResult> parentPlatforms;
  final List<Genre> genres;

  const GameDetails({
    required this.id,
    required this.slug,
    required this.name,
    required this.added,
    this.released,
    required this.tba,
    this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    required this.ratingsCount,
    this.addedByStatus,
    this.metacritic,
    required this.suggestionsCount,
    required this.playtime,
    required this.updated,
    required this.platforms,
    this.stores,
    required this.reviewsCount,
    required this.reviewsTextCount,
    required this.tags,
    required this.esrbRating,
    this.shortScreenshots,
    required this.parentPlatforms,
    required this.genres,
  });

  factory GameDetails.fromJson(Map<String, dynamic> json) =>
      _$GameDetailsFromJson(json);

  static List<GameDetails> fromJsonList(List<dynamic> list) {
    return list.map((e) => GameDetails.fromJson(e)).toList();
  }

  @override
  String toString() {
    return 'GameDetails(id: $id, slug: $slug, name: $name, added: $added, released: $released, tba: $tba, backgroundImage: $backgroundImage, rating: $rating, ratingTop: $ratingTop, ratings: $ratings, ratingsCount: $ratingsCount, addedByStatus: $addedByStatus, metacritic: $metacritic, suggestionsCount: $suggestionsCount, playtime: $playtime, updated: $updated, platforms: $platforms, stores: $stores, reviewsCount: $reviewsCount, reviewsTextCount: $reviewsTextCount, tags: $tags, esrbRating: $esrbRating, shortScreenshots: $shortScreenshots, parentPlatforms: $parentPlatforms, genres: $genres)';
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class GameDetailsResult {
  final int count;
  final List<GameDetails> results;

  const GameDetailsResult({
    required this.count,
    required this.results,
  });

  factory GameDetailsResult.fromJson(Map<String, dynamic> json) =>
      _$GameDetailsResultFromJson(json);

  @override
  String toString() => 'GameDetailsResult(count: $count, results: $results)';
}
