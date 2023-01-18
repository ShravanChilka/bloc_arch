// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      gamesCount: json['games_count'] as int?,
      imageBackground: json['image_background'] as String?,
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'games_count': instance.gamesCount,
      'image_background': instance.imageBackground,
    };

GenreResult _$GenreResultFromJson(Map<String, dynamic> json) => GenreResult(
      results: (json['results'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenreResultToJson(GenreResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
