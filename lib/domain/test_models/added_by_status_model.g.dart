// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'added_by_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddedByStatusModel _$AddedByStatusModelFromJson(Map<String, dynamic> json) =>
    AddedByStatusModel(
      owned: json['owned'] as int,
      beaten: json['beaten'] as int?,
      dropped: json['dropped'] as int?,
      playing: json['playing'] as int?,
      toplay: json['toplay'] as int?,
      yet: json['yet'] as int?,
    );

Map<String, dynamic> _$AddedByStatusModelToJson(AddedByStatusModel instance) =>
    <String, dynamic>{
      'owned': instance.owned,
      'yet': instance.yet,
      'beaten': instance.beaten,
      'toplay': instance.toplay,
      'dropped': instance.dropped,
      'playing': instance.playing,
    };
