// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) => RatingModel(
      id: json['id'] as int,
      title: json['title'] as String,
      count: json['count'] as int,
      percent: (json['percent'] as num).toDouble(),
    );

Map<String, dynamic> _$RatingModelToJson(RatingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'count': instance.count,
      'percent': instance.percent,
    };

RatingModelResult _$RatingModelResultFromJson(Map<String, dynamic> json) =>
    RatingModelResult(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => RatingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RatingModelResultToJson(RatingModelResult instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
