import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/store.dart';
part 'store_model.g.dart';

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class StoreModel extends Store {
  const StoreModel({
    required super.id,
    required super.name,
    required super.slug,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class StoreModelResult {
  final StoreModel store;

  const StoreModelResult({
    required this.store,
  });

  factory StoreModelResult.fromJson(Map<String, dynamic> json) =>
      _$StoreModelResultFromJson(json);
}
