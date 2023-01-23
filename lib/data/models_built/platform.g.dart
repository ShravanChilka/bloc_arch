// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlatformResult> _$platformResultSerializer =
    new _$PlatformResultSerializer();
Serializer<Platform> _$platformSerializer = new _$PlatformSerializer();

class _$PlatformResultSerializer
    implements StructuredSerializer<PlatformResult> {
  @override
  final Iterable<Type> types = const [PlatformResult, _$PlatformResult];
  @override
  final String wireName = 'PlatformResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlatformResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'platform',
      serializers.serialize(object.platform,
          specifiedType: const FullType(Platform)),
    ];

    return result;
  }

  @override
  PlatformResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlatformResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'platform':
          result.platform.replace(serializers.deserialize(value,
              specifiedType: const FullType(Platform))! as Platform);
          break;
      }
    }

    return result.build();
  }
}

class _$PlatformSerializer implements StructuredSerializer<Platform> {
  @override
  final Iterable<Type> types = const [Platform, _$Platform];
  @override
  final String wireName = 'Platform';

  @override
  Iterable<Object?> serialize(Serializers serializers, Platform object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.gamesCount;
    if (value != null) {
      result
        ..add('games_count')
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
    value = object.yearStart;
    if (value != null) {
      result
        ..add('year_start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.yearEnd;
    if (value != null) {
      result
        ..add('year_end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Platform deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlatformBuilder();

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
        case 'games_count':
          result.gamesCount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_background':
          result.imageBackground = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year_start':
          result.yearStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year_end':
          result.yearEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlatformResult extends PlatformResult {
  @override
  final Platform platform;

  factory _$PlatformResult([void Function(PlatformResultBuilder)? updates]) =>
      (new PlatformResultBuilder()..update(updates))._build();

  _$PlatformResult._({required this.platform}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        platform, r'PlatformResult', 'platform');
  }

  @override
  PlatformResult rebuild(void Function(PlatformResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformResultBuilder toBuilder() =>
      new PlatformResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformResult && platform == other.platform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformResult')
          ..add('platform', platform))
        .toString();
  }
}

class PlatformResultBuilder
    implements Builder<PlatformResult, PlatformResultBuilder> {
  _$PlatformResult? _$v;

  PlatformBuilder? _platform;
  PlatformBuilder get platform => _$this._platform ??= new PlatformBuilder();
  set platform(PlatformBuilder? platform) => _$this._platform = platform;

  PlatformResultBuilder();

  PlatformResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformResult;
  }

  @override
  void update(void Function(PlatformResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformResult build() => _build();

  _$PlatformResult _build() {
    _$PlatformResult _$result;
    try {
      _$result = _$v ?? new _$PlatformResult._(platform: platform.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platform';
        platform.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlatformResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Platform extends Platform {
  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? gamesCount;
  @override
  final String? imageBackground;
  @override
  final String? yearStart;
  @override
  final String? yearEnd;

  factory _$Platform([void Function(PlatformBuilder)? updates]) =>
      (new PlatformBuilder()..update(updates))._build();

  _$Platform._(
      {required this.id,
      required this.name,
      required this.slug,
      this.gamesCount,
      this.imageBackground,
      this.yearStart,
      this.yearEnd})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Platform', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Platform', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'Platform', 'slug');
  }

  @override
  Platform rebuild(void Function(PlatformBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformBuilder toBuilder() => new PlatformBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Platform &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        gamesCount == other.gamesCount &&
        imageBackground == other.imageBackground &&
        yearStart == other.yearStart &&
        yearEnd == other.yearEnd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, gamesCount.hashCode);
    _$hash = $jc(_$hash, imageBackground.hashCode);
    _$hash = $jc(_$hash, yearStart.hashCode);
    _$hash = $jc(_$hash, yearEnd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Platform')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('gamesCount', gamesCount)
          ..add('imageBackground', imageBackground)
          ..add('yearStart', yearStart)
          ..add('yearEnd', yearEnd))
        .toString();
  }
}

class PlatformBuilder implements Builder<Platform, PlatformBuilder> {
  _$Platform? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _gamesCount;
  String? get gamesCount => _$this._gamesCount;
  set gamesCount(String? gamesCount) => _$this._gamesCount = gamesCount;

  String? _imageBackground;
  String? get imageBackground => _$this._imageBackground;
  set imageBackground(String? imageBackground) =>
      _$this._imageBackground = imageBackground;

  String? _yearStart;
  String? get yearStart => _$this._yearStart;
  set yearStart(String? yearStart) => _$this._yearStart = yearStart;

  String? _yearEnd;
  String? get yearEnd => _$this._yearEnd;
  set yearEnd(String? yearEnd) => _$this._yearEnd = yearEnd;

  PlatformBuilder();

  PlatformBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _gamesCount = $v.gamesCount;
      _imageBackground = $v.imageBackground;
      _yearStart = $v.yearStart;
      _yearEnd = $v.yearEnd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Platform other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Platform;
  }

  @override
  void update(void Function(PlatformBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Platform build() => _build();

  _$Platform _build() {
    final _$result = _$v ??
        new _$Platform._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Platform', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Platform', 'name'),
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, r'Platform', 'slug'),
            gamesCount: gamesCount,
            imageBackground: imageBackground,
            yearStart: yearStart,
            yearEnd: yearEnd);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
