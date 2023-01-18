// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

StoreResult _$StoreResultFromJson(Map<String, dynamic> json) => StoreResult(
      store: Store.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreResultToJson(StoreResult instance) =>
    <String, dynamic>{
      'store': instance.store,
    };

StoreDetails _$StoreDetailsFromJson(Map<String, dynamic> json) => StoreDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      domain: json['domain'] as String?,
      gamesCount: json['games_count'] as int,
      imageBackground: json['image_background'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$StoreDetailsToJson(StoreDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'domain': instance.domain,
      'games_count': instance.gamesCount,
      'image_background': instance.imageBackground,
      'description': instance.description,
    };
