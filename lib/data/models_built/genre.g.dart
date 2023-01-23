// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Genre> _$genreSerializer = new _$GenreSerializer();

class _$GenreSerializer implements StructuredSerializer<Genre> {
  @override
  final Iterable<Type> types = const [Genre, _$Genre];
  @override
  final String wireName = 'Genre';

  @override
  Iterable<Object?> serialize(Serializers serializers, Genre object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(int)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.gamesCount;
    if (value != null) {
      result
        ..add('games_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imageBackground;
    if (value != null) {
      result
        ..add('image_background')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Genre deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreBuilder();

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
              specifiedType: const FullType(int))! as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'games_count':
          result.gamesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image_background':
          result.imageBackground = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Genre extends Genre {
  @override
  final int id;
  @override
  final int name;
  @override
  final String slug;
  @override
  final int? gamesCount;
  @override
  final String? imageBackground;

  factory _$Genre([void Function(GenreBuilder)? updates]) =>
      (new GenreBuilder()..update(updates))._build();

  _$Genre._(
      {required this.id,
      required this.name,
      required this.slug,
      this.gamesCount,
      this.imageBackground})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Genre', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Genre', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'Genre', 'slug');
  }

  @override
  Genre rebuild(void Function(GenreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreBuilder toBuilder() => new GenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genre &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        gamesCount == other.gamesCount &&
        imageBackground == other.imageBackground;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, gamesCount.hashCode);
    _$hash = $jc(_$hash, imageBackground.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Genre')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('gamesCount', gamesCount)
          ..add('imageBackground', imageBackground))
        .toString();
  }
}

class GenreBuilder implements Builder<Genre, GenreBuilder> {
  _$Genre? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _name;
  int? get name => _$this._name;
  set name(int? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  int? _gamesCount;
  int? get gamesCount => _$this._gamesCount;
  set gamesCount(int? gamesCount) => _$this._gamesCount = gamesCount;

  String? _imageBackground;
  String? get imageBackground => _$this._imageBackground;
  set imageBackground(String? imageBackground) =>
      _$this._imageBackground = imageBackground;

  GenreBuilder();

  GenreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _gamesCount = $v.gamesCount;
      _imageBackground = $v.imageBackground;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Genre other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Genre;
  }

  @override
  void update(void Function(GenreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Genre build() => _build();

  _$Genre _build() {
    final _$result = _$v ??
        new _$Genre._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Genre', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Genre', 'name'),
            slug: BuiltValueNullFieldError.checkNotNull(slug, r'Genre', 'slug'),
            gamesCount: gamesCount,
            imageBackground: imageBackground);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
