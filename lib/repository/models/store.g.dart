// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      domain: json['domain'] as String?,
      gamesCount: json['gamesCount'] as int?,
      imageBackground: json['imageBackground'] as String?,
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'domain': instance.domain,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };
