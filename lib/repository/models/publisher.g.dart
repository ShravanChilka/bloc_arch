// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Publisher _$PublisherFromJson(Map<String, dynamic> json) => Publisher(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      gamesCount: json['gamesCount'] as int,
      imageBackground: json['imageBackground'] as String,
    );

Map<String, dynamic> _$PublisherToJson(Publisher instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };
