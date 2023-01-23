import 'dart:convert';

import 'package:built_collection/built_collection.dart';

import 'serializers.dart';
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

  @BuiltValueField(wireName: 'results')
  BuiltList<Store> get stores;
}

abstract class StoreObject implements Built<StoreObject, StoreObjectBuilder> {
  StoreObject._();

  factory StoreObject(Function(StoreObjectBuilder b) updates) = _$StoreObject;

  static Serializer<StoreObject> get serializer => _$storeObjectSerializer;

  static StoreObject? fromJson(String jsonString) {
    return serializers.deserializeWith(
      StoreObject.serializer,
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
  bool get isSelected;
  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(StoreBuilder b) => b..isSelected = false;
}
