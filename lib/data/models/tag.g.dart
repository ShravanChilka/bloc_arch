// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TagResult> _$tagResultSerializer = new _$TagResultSerializer();
Serializer<Tag> _$tagSerializer = new _$TagSerializer();

class _$TagResultSerializer implements StructuredSerializer<TagResult> {
  @override
  final Iterable<Type> types = const [TagResult, _$TagResult];
  @override
  final String wireName = 'TagResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, TagResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Tag)])),
    ];

    return result;
  }

  @override
  TagResult deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tag)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TagSerializer implements StructuredSerializer<Tag> {
  @override
  final Iterable<Type> types = const [Tag, _$Tag];
  @override
  final String wireName = 'Tag';

  @override
  Iterable<Object?> serialize(Serializers serializers, Tag object,
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
  Tag deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagBuilder();

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

class _$TagResult extends TagResult {
  @override
  final BuiltList<Tag> tags;

  factory _$TagResult([void Function(TagResultBuilder)? updates]) =>
      (new TagResultBuilder()..update(updates))._build();

  _$TagResult._({required this.tags}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tags, r'TagResult', 'tags');
  }

  @override
  TagResult rebuild(void Function(TagResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagResultBuilder toBuilder() => new TagResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagResult && tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagResult')..add('tags', tags))
        .toString();
  }
}

class TagResultBuilder implements Builder<TagResult, TagResultBuilder> {
  _$TagResult? _$v;

  ListBuilder<Tag>? _tags;
  ListBuilder<Tag> get tags => _$this._tags ??= new ListBuilder<Tag>();
  set tags(ListBuilder<Tag>? tags) => _$this._tags = tags;

  TagResultBuilder();

  TagResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagResult;
  }

  @override
  void update(void Function(TagResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagResult build() => _build();

  _$TagResult _build() {
    _$TagResult _$result;
    try {
      _$result = _$v ?? new _$TagResult._(tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Tag extends Tag {
  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final int? gamesCount;
  @override
  final String? imageBackground;

  factory _$Tag([void Function(TagBuilder)? updates]) =>
      (new TagBuilder()..update(updates))._build();

  _$Tag._(
      {required this.id,
      required this.name,
      required this.slug,
      this.gamesCount,
      this.imageBackground})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Tag', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Tag', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'Tag', 'slug');
  }

  @override
  Tag rebuild(void Function(TagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => new TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag &&
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
    return (newBuiltValueToStringHelper(r'Tag')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('gamesCount', gamesCount)
          ..add('imageBackground', imageBackground))
        .toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  TagBuilder();

  TagBuilder get _$this {
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
  void replace(Tag other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tag build() => _build();

  _$Tag _build() {
    final _$result = _$v ??
        new _$Tag._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Tag', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Tag', 'name'),
            slug: BuiltValueNullFieldError.checkNotNull(slug, r'Tag', 'slug'),
            gamesCount: gamesCount,
            imageBackground: imageBackground);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
