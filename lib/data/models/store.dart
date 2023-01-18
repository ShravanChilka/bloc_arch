import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart'
    show FieldRename, JsonSerializable;
part 'store.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Store {
  final int id;
  final String name;
  final String slug;

  const Store({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  @override
  String toString() => 'Store(id: $id, name: $name, slug: $slug)';
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class StoreResult {
  final Store store;

  const StoreResult({
    required this.store,
  });

  factory StoreResult.fromJson(Map<String, dynamic> json) =>
      _$StoreResultFromJson(json);

  @override
  String toString() => 'StoreResult(store: $store)';
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class StoreDetails {
  final int id;
  final String name;
  final String slug;
  final String? domain;
  final int gamesCount;
  final String imageBackground;
  final String description;

  const StoreDetails({
    required this.id,
    required this.name,
    required this.slug,
    this.domain,
    required this.gamesCount,
    required this.imageBackground,
    required this.description,
  });

  factory StoreDetails.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailsFromJson(json);

  @override
  String toString() {
    return 'StoreDetails(id: $id, name: $name, slug: $slug, domain: $domain, gamesCount: $gamesCount, imageBackground: $imageBackground, description: $description)';
  }
}
