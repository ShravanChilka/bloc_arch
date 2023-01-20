import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/tag.dart';
part 'tag_model.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class TagModel extends Tag {
  const TagModel({
    required super.id,
    required super.name,
    required super.slug,
    required super.gamesCount,
    required super.language,
  });

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}
