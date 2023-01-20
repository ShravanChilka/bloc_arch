// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => StoreModel(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$StoreModelToJson(StoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

StoreModelResult _$StoreModelResultFromJson(Map<String, dynamic> json) =>
    StoreModelResult(
      store: StoreModel.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreModelResultToJson(StoreModelResult instance) =>
    <String, dynamic>{
      'store': instance.store,
    };
