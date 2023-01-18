import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
part 'rating.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class Rating {
  final int id;
  final String title;
  final int count;
  final double percent;

  const Rating({
    required this.id,
    required this.title,
    required this.count,
    required this.percent,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  @override
  String toString() {
    return 'Rating(id: $id, title: $title, count: $count, percent: $percent)';
  }
}
