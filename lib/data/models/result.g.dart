// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result<T> _$ResultFromJson<T>(Map<String, dynamic> json) => Result<T>(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ModelConverter<T>().fromJson(e as Object))
          .toList(),
    );

Map<String, dynamic> _$ResultToJson<T>(Result<T> instance) => <String, dynamic>{
      'count': instance.count,
      'results': instance.results.map(ModelConverter<T>().toJson).toList(),
    };
