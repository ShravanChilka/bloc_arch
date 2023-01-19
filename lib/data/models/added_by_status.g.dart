// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'added_by_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddedByStatus _$AddedByStatusFromJson(Map<String, dynamic> json) =>
    AddedByStatus(
      owned: json['owned'] as int,
      yet: json['yet'] as int?,
      beaten: json['beaten'] as int?,
      toplay: json['toplay'] as int?,
      dropped: json['dropped'] as int?,
      playing: json['playing'] as int?,
    );

Map<String, dynamic> _$AddedByStatusToJson(AddedByStatus instance) =>
    <String, dynamic>{
      'owned': instance.owned,
      'yet': instance.yet,
      'beaten': instance.beaten,
      'toplay': instance.toplay,
      'dropped': instance.dropped,
      'playing': instance.playing,
    };
