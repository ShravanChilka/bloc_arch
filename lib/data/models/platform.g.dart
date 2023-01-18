// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Platform _$PlatformFromJson(Map<String, dynamic> json) => Platform(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$PlatformToJson(Platform instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

PlatformResult _$PlatformResultFromJson(Map<String, dynamic> json) =>
    PlatformResult(
      platform: Platform.fromJson(json['platform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformResultToJson(PlatformResult instance) =>
    <String, dynamic>{
      'platform': instance.platform,
    };

PlatformDetails _$PlatformDetailsFromJson(Map<String, dynamic> json) =>
    PlatformDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      gamesCount: json['games_count'] as int,
      imageBackground: json['image_background'] as String,
      games: (json['games'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      yearStart: json['year_start'] as int?,
      yearEnd: json['year_end'] as int?,
    );

Map<String, dynamic> _$PlatformDetailsToJson(PlatformDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'games_count': instance.gamesCount,
      'image_background': instance.imageBackground,
      'games': instance.games,
      'image': instance.image,
      'year_start': instance.yearStart,
      'year_end': instance.yearEnd,
    };
