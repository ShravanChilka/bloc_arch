// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Platform _$PlatformFromJson(Map<String, dynamic> json) => Platform(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      gamesCount: json['gamesCount'] as int?,
      imageBackground: json['imageBackground'] as String?,
      image: json['image'] as String?,
      yearStart: json['yearStart'] as int?,
      yearEnd: json['yearEnd'] as int?,
    );

Map<String, dynamic> _$PlatformToJson(Platform instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
      'image': instance.image,
      'yearStart': instance.yearStart,
      'yearEnd': instance.yearEnd,
    };
