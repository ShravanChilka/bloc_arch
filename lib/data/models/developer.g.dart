// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeveloperResult> _$developerResultSerializer =
    new _$DeveloperResultSerializer();
Serializer<Developer> _$developerSerializer = new _$DeveloperSerializer();

class _$DeveloperResultSerializer
    implements StructuredSerializer<DeveloperResult> {
  @override
  final Iterable<Type> types = const [DeveloperResult, _$DeveloperResult];
  @override
  final String wireName = 'DeveloperResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, DeveloperResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.developers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Developer)])),
    ];

    return result;
  }

  @override
  DeveloperResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeveloperResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.developers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Developer)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$DeveloperSerializer implements StructuredSerializer<Developer> {
  @override
  final Iterable<Type> types = const [Developer, _$Developer];
  @override
  final String wireName = 'Developer';

  @override
  Iterable<Object?> serialize(Serializers serializers, Developer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'isSelected',
      serializers.serialize(object.isSelected,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.imageBackground;
    if (value != null) {
      result
        ..add('image_background')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gamesCount;
    if (value != null) {
      result
        ..add('games_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Developer deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeveloperBuilder();

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
        case 'image_background':
          result.imageBackground = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'games_count':
          result.gamesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isSelected':
          result.isSelected = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DeveloperResult extends DeveloperResult {
  @override
  final BuiltList<Developer> developers;

  factory _$DeveloperResult([void Function(DeveloperResultBuilder)? updates]) =>
      (new DeveloperResultBuilder()..update(updates))._build();

  _$DeveloperResult._({required this.developers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        developers, r'DeveloperResult', 'developers');
  }

  @override
  DeveloperResult rebuild(void Function(DeveloperResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeveloperResultBuilder toBuilder() =>
      new DeveloperResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeveloperResult && developers == other.developers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, developers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeveloperResult')
          ..add('developers', developers))
        .toString();
  }
}

class DeveloperResultBuilder
    implements Builder<DeveloperResult, DeveloperResultBuilder> {
  _$DeveloperResult? _$v;

  ListBuilder<Developer>? _developers;
  ListBuilder<Developer> get developers =>
      _$this._developers ??= new ListBuilder<Developer>();
  set developers(ListBuilder<Developer>? developers) =>
      _$this._developers = developers;

  DeveloperResultBuilder();

  DeveloperResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _developers = $v.developers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeveloperResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeveloperResult;
  }

  @override
  void update(void Function(DeveloperResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeveloperResult build() => _build();

  _$DeveloperResult _build() {
    _$DeveloperResult _$result;
    try {
      _$result = _$v ?? new _$DeveloperResult._(developers: developers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'developers';
        developers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeveloperResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Developer extends Developer {
  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? imageBackground;
  @override
  final int? gamesCount;
  @override
  final bool isSelected;

  factory _$Developer([void Function(DeveloperBuilder)? updates]) =>
      (new DeveloperBuilder()..update(updates))._build();

  _$Developer._(
      {required this.id,
      required this.name,
      required this.slug,
      this.imageBackground,
      this.gamesCount,
      required this.isSelected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Developer', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Developer', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'Developer', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        isSelected, r'Developer', 'isSelected');
  }

  @override
  Developer rebuild(void Function(DeveloperBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeveloperBuilder toBuilder() => new DeveloperBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Developer &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        imageBackground == other.imageBackground &&
        gamesCount == other.gamesCount &&
        isSelected == other.isSelected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, imageBackground.hashCode);
    _$hash = $jc(_$hash, gamesCount.hashCode);
    _$hash = $jc(_$hash, isSelected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Developer')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('imageBackground', imageBackground)
          ..add('gamesCount', gamesCount)
          ..add('isSelected', isSelected))
        .toString();
  }
}

class DeveloperBuilder implements Builder<Developer, DeveloperBuilder> {
  _$Developer? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _imageBackground;
  String? get imageBackground => _$this._imageBackground;
  set imageBackground(String? imageBackground) =>
      _$this._imageBackground = imageBackground;

  int? _gamesCount;
  int? get gamesCount => _$this._gamesCount;
  set gamesCount(int? gamesCount) => _$this._gamesCount = gamesCount;

  bool? _isSelected;
  bool? get isSelected => _$this._isSelected;
  set isSelected(bool? isSelected) => _$this._isSelected = isSelected;

  DeveloperBuilder() {
    Developer._setDefaults(this);
  }

  DeveloperBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _imageBackground = $v.imageBackground;
      _gamesCount = $v.gamesCount;
      _isSelected = $v.isSelected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Developer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Developer;
  }

  @override
  void update(void Function(DeveloperBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Developer build() => _build();

  _$Developer _build() {
    final _$result = _$v ??
        new _$Developer._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Developer', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Developer', 'name'),
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, r'Developer', 'slug'),
            imageBackground: imageBackground,
            gamesCount: gamesCount,
            isSelected: BuiltValueNullFieldError.checkNotNull(
                isSelected, r'Developer', 'isSelected'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
