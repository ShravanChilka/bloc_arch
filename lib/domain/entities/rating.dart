// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Rating extends Equatable {
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

  @override
  List<Object> get props => [id, title, count, percent];
}
