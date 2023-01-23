// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreatorResult> _$creatorResultSerializer =
    new _$CreatorResultSerializer();
Serializer<Creator> _$creatorSerializer = new _$CreatorSerializer();

class _$CreatorResultSerializer implements StructuredSerializer<CreatorResult> {
  @override
  final Iterable<Type> types = const [CreatorResult, _$CreatorResult];
  @override
  final String wireName = 'CreatorResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, CreatorResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.creators,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Creator)])),
    ];

    return result;
  }

  @override
  CreatorResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatorResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.creators.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Creator)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CreatorSerializer implements StructuredSerializer<Creator> {
  @override
  final Iterable<Type> types = const [Creator, _$Creator];
  @override
  final String wireName = 'Creator';

  @override
  Iterable<Object?> serialize(Serializers serializers, Creator object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  Creator deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatorBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CreatorResult extends CreatorResult {
  @override
  final BuiltList<Creator> creators;

  factory _$CreatorResult([void Function(CreatorResultBuilder)? updates]) =>
      (new CreatorResultBuilder()..update(updates))._build();

  _$CreatorResult._({required this.creators}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        creators, r'CreatorResult', 'creators');
  }

  @override
  CreatorResult rebuild(void Function(CreatorResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatorResultBuilder toBuilder() => new CreatorResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatorResult && creators == other.creators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatorResult')
          ..add('creators', creators))
        .toString();
  }
}

class CreatorResultBuilder
    implements Builder<CreatorResult, CreatorResultBuilder> {
  _$CreatorResult? _$v;

  ListBuilder<Creator>? _creators;
  ListBuilder<Creator> get creators =>
      _$this._creators ??= new ListBuilder<Creator>();
  set creators(ListBuilder<Creator>? creators) => _$this._creators = creators;

  CreatorResultBuilder();

  CreatorResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creators = $v.creators.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatorResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatorResult;
  }

  @override
  void update(void Function(CreatorResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatorResult build() => _build();

  _$CreatorResult _build() {
    _$CreatorResult _$result;
    try {
      _$result = _$v ?? new _$CreatorResult._(creators: creators.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creators';
        creators.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatorResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Creator extends Creator {
  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? image;
  @override
  final String? imageBackground;
  @override
  final int? gamesCount;
  @override
  final bool isSelected;

  factory _$Creator([void Function(CreatorBuilder)? updates]) =>
      (new CreatorBuilder()..update(updates))._build();

  _$Creator._(
      {required this.id,
      required this.name,
      required this.slug,
      this.image,
      this.imageBackground,
      this.gamesCount,
      required this.isSelected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Creator', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Creator', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'Creator', 'slug');
    BuiltValueNullFieldError.checkNotNull(isSelected, r'Creator', 'isSelected');
  }

  @override
  Creator rebuild(void Function(CreatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatorBuilder toBuilder() => new CreatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Creator &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        image == other.image &&
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
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, imageBackground.hashCode);
    _$hash = $jc(_$hash, gamesCount.hashCode);
    _$hash = $jc(_$hash, isSelected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Creator')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('image', image)
          ..add('imageBackground', imageBackground)
          ..add('gamesCount', gamesCount)
          ..add('isSelected', isSelected))
        .toString();
  }
}

class CreatorBuilder implements Builder<Creator, CreatorBuilder> {
  _$Creator? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

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

  CreatorBuilder() {
    Creator._setDefaults(this);
  }

  CreatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _image = $v.image;
      _imageBackground = $v.imageBackground;
      _gamesCount = $v.gamesCount;
      _isSelected = $v.isSelected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Creator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Creator;
  }

  @override
  void update(void Function(CreatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Creator build() => _build();

  _$Creator _build() {
    final _$result = _$v ??
        new _$Creator._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Creator', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Creator', 'name'),
            slug:
                BuiltValueNullFieldError.checkNotNull(slug, r'Creator', 'slug'),
            image: image,
            imageBackground: imageBackground,
            gamesCount: gamesCount,
            isSelected: BuiltValueNullFieldError.checkNotNull(
                isSelected, r'Creator', 'isSelected'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
