// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      id: json['id'] as int,
      slug: json['slug'] as String,
      name: json['name'] as String,
      added: json['added'] as int,
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'added': instance.added,
    };

GameDetails _$GameDetailsFromJson(Map<String, dynamic> json) => GameDetails(
      id: json['id'] as int,
      slug: json['slug'] as String,
      name: json['name'] as String,
      added: json['added'] as int,
      released: json['released'] as String?,
      tba: json['tba'] as bool,
      backgroundImage: json['background_image'] as String?,
      rating: (json['rating'] as num).toDouble(),
      ratingTop: json['rating_top'] as int,
      ratings: (json['ratings'] as List<dynamic>)
          .map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingsCount: json['ratings_count'] as int,
      addedByStatus: json['added_by_status'] == null
          ? null
          : AddedByStatus.fromJson(
              json['added_by_status'] as Map<String, dynamic>),
      metacritic: json['metacritic'] as int?,
      suggestionsCount: json['suggestions_count'] as int,
      playtime: json['playtime'] as int,
      updated: json['updated'] as String,
      platforms: (json['platforms'] as List<dynamic>)
          .map((e) => PlatformResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => StoreResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewsCount: json['reviews_count'] as int,
      reviewsTextCount: json['reviews_text_count'] as int,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      esrbRating: json['esrb_rating'] == null
          ? null
          : EsrbRating.fromJson(json['esrb_rating'] as Map<String, dynamic>),
      shortScreenshots: (json['short_screenshots'] as List<dynamic>?)
          ?.map((e) => ShortScreenshot.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentPlatforms: (json['parent_platforms'] as List<dynamic>)
          .map((e) => PlatformResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameDetailsToJson(GameDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'added': instance.added,
      'released': instance.released,
      'tba': instance.tba,
      'background_image': instance.backgroundImage,
      'rating': instance.rating,
      'rating_top': instance.ratingTop,
      'ratings': instance.ratings,
      'added_by_status': instance.addedByStatus,
      'ratings_count': instance.ratingsCount,
      'metacritic': instance.metacritic,
      'suggestions_count': instance.suggestionsCount,
      'playtime': instance.playtime,
      'updated': instance.updated,
      'platforms': instance.platforms,
      'stores': instance.stores,
      'reviews_count': instance.reviewsCount,
      'reviews_text_count': instance.reviewsTextCount,
      'tags': instance.tags,
      'esrb_rating': instance.esrbRating,
      'short_screenshots': instance.shortScreenshots,
      'parent_platforms': instance.parentPlatforms,
      'genres': instance.genres,
    };

GameDetailsResult _$GameDetailsResultFromJson(Map<String, dynamic> json) =>
    GameDetailsResult(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => GameDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameDetailsResultToJson(GameDetailsResult instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
