import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'added_by_status.dart';
import 'esrb_rating.dart';
import 'genre.dart';
import 'platform.dart';
import 'rating.dart';
import 'short_screenshot.dart';
import 'store.dart';
import 'tag.dart';

@immutable
class Game extends Equatable {
  final int id;
  final String slug;
  final String name;
  final int added;
  final String? released;
  final bool tba;
  final String? backgroundImage;
  final double rating;
  final int ratingTop;
  final int ratingsCount;
  final int? metacritic;
  final int suggestionsCount;
  final int playtime;
  final String updated;
  final int reviewsCount;
  final int reviewsTextCount;
  final AddedByStatus? addedByStatus;
  final EsrbRating? esrbRating;
  final List<Tag> tags;
  final List<Rating> ratings;
  final List<Platform> platforms;
  final List<Store>? stores;
  final List<ShortScreenshot>? shortScreenshots;
  final List<Platform> parentPlatforms;
  final List<Genre> genres;

  const Game({
    required this.id,
    required this.slug,
    required this.name,
    required this.added,
    this.released,
    required this.tba,
    this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratingsCount,
    this.metacritic,
    required this.suggestionsCount,
    required this.playtime,
    required this.updated,
    required this.reviewsCount,
    required this.reviewsTextCount,
    this.addedByStatus,
    this.esrbRating,
    required this.tags,
    required this.ratings,
    required this.platforms,
    this.stores,
    this.shortScreenshots,
    required this.parentPlatforms,
    required this.genres,
  });

  @override
  List<Object?> get props => [
        id,
        slug,
        name,
        added,
        released,
        tba,
        backgroundImage,
        rating,
        ratingTop,
        ratings,
        addedByStatus,
        ratingsCount,
        metacritic,
        suggestionsCount,
        playtime,
        updated,
        platforms,
        stores,
        reviewsCount,
        reviewsTextCount,
        tags,
        esrbRating,
        shortScreenshots,
        parentPlatforms,
        genres,
      ];
}
