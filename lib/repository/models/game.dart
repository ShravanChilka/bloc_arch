import 'package:bloc_arch/repository/models/platform.dart';
import 'package:bloc_arch/repository/models/rating.dart';
import 'package:bloc_arch/repository/models/short_screenshot.dart';
import 'package:bloc_arch/repository/models/store.dart';
import 'package:bloc_arch/repository/models/tag.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
import 'added_by_status.dart';
import 'esrb_rating.dart';
import 'genre.dart';
part 'game.g.dart';

@JsonSerializable()
@immutable
class Game {
  final int id;
  final String slug;
  final String name;
  final String released;
  final bool tba;
  final String backgroundImage;
  final double rating;
  final int ratingTop;
  final List<Rating> ratings;
  final int ratingsCount;
  final int added;
  final AddedByStatus addedByStatus;
  final int metacritic;
  final int suggestionsCount;
  final int playtime;
  final String updated;
  final List<Platform> platforms;
  final List<Store> stores;
  final int reviewsCount;
  final int reviewsTextCount;
  final List<Tag> tags;
  final EsrbRating esrbRating;
  final List<ShortScreenshot> shortScreenshots;
  final List<Platform> parentPlatforms;
  final List<Genre> genres;

  const Game({
    required this.id,
    required this.slug,
    required this.name,
    required this.released,
    required this.tba,
    required this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    required this.ratingsCount,
    required this.added,
    required this.addedByStatus,
    required this.metacritic,
    required this.suggestionsCount,
    required this.playtime,
    required this.updated,
    required this.platforms,
    required this.stores,
    required this.reviewsCount,
    required this.reviewsTextCount,
    required this.tags,
    required this.esrbRating,
    required this.shortScreenshots,
    required this.parentPlatforms,
    required this.genres,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
