// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      gamesCount: json['games_count'] as int,
      imageBackground: json['image_background'] as String,
      language: json['language'] as String,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'games_count': instance.gamesCount,
      'image_background': instance.imageBackground,
      'language': instance.language,
    };
