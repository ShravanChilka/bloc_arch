// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreResult> _$storeResultSerializer = new _$StoreResultSerializer();
Serializer<Store> _$storeSerializer = new _$StoreSerializer();

class _$StoreResultSerializer implements StructuredSerializer<StoreResult> {
  @override
  final Iterable<Type> types = const [StoreResult, _$StoreResult];
  @override
  final String wireName = 'StoreResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, StoreResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'store',
      serializers.serialize(object.store, specifiedType: const FullType(Store)),
    ];

    return result;
  }

  @override
  StoreResult deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'store':
          result.store.replace(serializers.deserialize(value,
              specifiedType: const FullType(Store))! as Store);
          break;
      }
    }

    return result.build();
  }
}

class _$StoreSerializer implements StructuredSerializer<Store> {
  @override
  final Iterable<Type> types = const [Store, _$Store];
  @override
  final String wireName = 'Store';

  @override
  Iterable<Object?> serialize(Serializers serializers, Store object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Store deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StoreResult extends StoreResult {
  @override
  final Store store;

  factory _$StoreResult([void Function(StoreResultBuilder)? updates]) =>
      (new StoreResultBuilder()..update(updates))._build();

  _$StoreResult._({required this.store}) : super._() {
    BuiltValueNullFieldError.checkNotNull(store, r'StoreResult', 'store');
  }

  @override
  StoreResult rebuild(void Function(StoreResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreResultBuilder toBuilder() => new StoreResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreResult && store == other.store;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, store.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreResult')..add('store', store))
        .toString();
  }
}

class StoreResultBuilder implements Builder<StoreResult, StoreResultBuilder> {
  _$StoreResult? _$v;

  StoreBuilder? _store;
  StoreBuilder get store => _$this._store ??= new StoreBuilder();
  set store(StoreBuilder? store) => _$this._store = store;

  StoreResultBuilder();

  StoreResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _store = $v.store.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreResult;
  }

  @override
  void update(void Function(StoreResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreResult build() => _build();

  _$StoreResult _build() {
    _$StoreResult _$result;
    try {
      _$result = _$v ?? new _$StoreResult._(store: store.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'store';
        store.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StoreResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Store extends Store {
  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  factory _$Store([void Function(StoreBuilder)? updates]) =>
      (new StoreBuilder()..update(updates))._build();

  _$Store._({required this.id, required this.name, required this.slug})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Store', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Store', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'Store', 'slug');
  }

  @override
  Store rebuild(void Function(StoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreBuilder toBuilder() => new StoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Store &&
        id == other.id &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Store')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class StoreBuilder implements Builder<Store, StoreBuilder> {
  _$Store? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  StoreBuilder();

  StoreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Store other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Store;
  }

  @override
  void update(void Function(StoreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Store build() => _build();

  _$Store _build() {
    final _$result = _$v ??
        new _$Store._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Store', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Store', 'name'),
            slug:
                BuiltValueNullFieldError.checkNotNull(slug, r'Store', 'slug'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
