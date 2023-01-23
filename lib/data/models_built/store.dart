import 'dart:convert';

import 'package:bloc_arch/data/models_built/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'store.g.dart';

abstract class StoreResult implements Built<StoreResult, StoreResultBuilder> {
  StoreResult._();

  factory StoreResult(Function(StoreResultBuilder b) updates) = _$StoreResult;

  static Serializer<StoreResult> get serializer => _$storeResultSerializer;

  static StoreResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
      StoreResult.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'store')
  Store get store;
}

abstract class Store implements Built<Store, StoreBuilder> {
  Store._();

  factory Store(Function(StoreBuilder b) updates) = _$Store;

  static Store? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Store.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<Store> get serializer => _$storeSerializer;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'slug')
  String get slug;
}
