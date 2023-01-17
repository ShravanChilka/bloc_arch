// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      id: json['id'] as int,
      slug: json['slug'] as String,
      name: json['name'] as String,
      released: json['released'] as String,
      tba: json['tba'] as bool,
      backgroundImage: json['backgroundImage'] as String,
      rating: (json['rating'] as num).toDouble(),
      ratingTop: json['ratingTop'] as int,
      ratings: (json['ratings'] as List<dynamic>)
          .map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingsCount: json['ratingsCount'] as int,
      added: json['added'] as int,
      addedByStatus:
          AddedByStatus.fromJson(json['addedByStatus'] as Map<String, dynamic>),
      metacritic: json['metacritic'] as int,
      suggestionsCount: json['suggestionsCount'] as int,
      playtime: json['playtime'] as int,
      updated: json['updated'] as String,
      platforms: (json['platforms'] as List<dynamic>)
          .map((e) => Platform.fromJson(e as Map<String, dynamic>))
          .toList(),
      stores: (json['stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewsCount: json['reviewsCount'] as int,
      reviewsTextCount: json['reviewsTextCount'] as int,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      esrbRating:
          EsrbRating.fromJson(json['esrbRating'] as Map<String, dynamic>),
      shortScreenshots: (json['shortScreenshots'] as List<dynamic>)
          .map((e) => ShortScreenshot.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentPlatforms: (json['parentPlatforms'] as List<dynamic>)
          .map((e) => Platform.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'released': instance.released,
      'tba': instance.tba,
      'backgroundImage': instance.backgroundImage,
      'rating': instance.rating,
      'ratingTop': instance.ratingTop,
      'ratings': instance.ratings,
      'ratingsCount': instance.ratingsCount,
      'added': instance.added,
      'addedByStatus': instance.addedByStatus,
      'metacritic': instance.metacritic,
      'suggestionsCount': instance.suggestionsCount,
      'playtime': instance.playtime,
      'updated': instance.updated,
      'platforms': instance.platforms,
      'stores': instance.stores,
      'reviewsCount': instance.reviewsCount,
      'reviewsTextCount': instance.reviewsTextCount,
      'tags': instance.tags,
      'esrbRating': instance.esrbRating,
      'shortScreenshots': instance.shortScreenshots,
      'parentPlatforms': instance.parentPlatforms,
      'genres': instance.genres,
    };
