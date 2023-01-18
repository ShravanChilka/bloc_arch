// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Developer _$DeveloperFromJson(Map<String, dynamic> json) => Developer(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      gamesCount: json['games_count'] as int,
      imageBackground: json['image_background'] as String,
    );

Map<String, dynamic> _$DeveloperToJson(Developer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'games_count': instance.gamesCount,
      'image_background': instance.imageBackground,
    };
