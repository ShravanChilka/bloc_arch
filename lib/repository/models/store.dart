import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
part 'store.g.dart';

@immutable
@JsonSerializable()
class Store {
  final int id;
  final String name;
  final String slug;
  final String? domain;
  final int? gamesCount;
  final String? imageBackground;

  const Store({
    required this.id,
    required this.name,
    required this.slug,
    this.domain,
    this.gamesCount,
    this.imageBackground,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
