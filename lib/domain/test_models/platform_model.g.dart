// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformModel _$PlatformModelFromJson(Map<String, dynamic> json) =>
    PlatformModel(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$PlatformModelToJson(PlatformModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

PlatformModelResult _$PlatformModelResultFromJson(Map<String, dynamic> json) =>
    PlatformModelResult(
      platform:
          PlatformModel.fromJson(json['platform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformModelResultToJson(
        PlatformModelResult instance) =>
    <String, dynamic>{
      'platform': instance.platform,
    };
