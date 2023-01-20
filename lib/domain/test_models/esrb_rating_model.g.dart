// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esrb_rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EsrbRatingModel _$EsrbRatingModelFromJson(Map<String, dynamic> json) =>
    EsrbRatingModel(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$EsrbRatingModelToJson(EsrbRatingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };
