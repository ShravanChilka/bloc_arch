// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PublisherResult> _$publisherResultSerializer =
    new _$PublisherResultSerializer();
Serializer<Publisher> _$publisherSerializer = new _$PublisherSerializer();

class _$PublisherResultSerializer
    implements StructuredSerializer<PublisherResult> {
  @override
  final Iterable<Type> types = const [PublisherResult, _$PublisherResult];
  @override
  final String wireName = 'PublisherResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, PublisherResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.publishers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Publisher)])),
    ];

    return result;
  }

  @override
  PublisherResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PublisherResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.publishers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Publisher)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PublisherSerializer implements StructuredSerializer<Publisher> {
  @override
  final Iterable<Type> types = const [Publisher, _$Publisher];
  @override
  final String wireName = 'Publisher';

  @override
  Iterable<Object?> serialize(Serializers serializers, Publisher object,
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
  Publisher deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PublisherBuilder();

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

class _$PublisherResult extends PublisherResult {
  @override
  final BuiltList<Publisher> publishers;

  factory _$PublisherResult([void Function(PublisherResultBuilder)? updates]) =>
      (new PublisherResultBuilder()..update(updates))._build();

  _$PublisherResult._({required this.publishers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        publishers, r'PublisherResult', 'publishers');
  }

  @override
  PublisherResult rebuild(void Function(PublisherResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublisherResultBuilder toBuilder() =>
      new PublisherResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublisherResult && publishers == other.publishers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publishers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PublisherResult')
          ..add('publishers', publishers))
        .toString();
  }
}

class PublisherResultBuilder
    implements Builder<PublisherResult, PublisherResultBuilder> {
  _$PublisherResult? _$v;

  ListBuilder<Publisher>? _publishers;
  ListBuilder<Publisher> get publishers =>
      _$this._publishers ??= new ListBuilder<Publisher>();
  set publishers(ListBuilder<Publisher>? publishers) =>
      _$this._publishers = publishers;

  PublisherResultBuilder();

  PublisherResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publishers = $v.publishers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublisherResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublisherResult;
  }

  @override
  void update(void Function(PublisherResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublisherResult build() => _build();

  _$PublisherResult _build() {
    _$PublisherResult _$result;
    try {
      _$result = _$v ?? new _$PublisherResult._(publishers: publishers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publishers';
        publishers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PublisherResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Publisher extends Publisher {
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

  factory _$Publisher([void Function(PublisherBuilder)? updates]) =>
      (new PublisherBuilder()..update(updates))._build();

  _$Publisher._(
      {required this.id,
      required this.name,
      required this.slug,
      this.image,
      this.imageBackground,
      this.gamesCount,
      required this.isSelected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Publisher', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Publisher', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'Publisher', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        isSelected, r'Publisher', 'isSelected');
  }

  @override
  Publisher rebuild(void Function(PublisherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublisherBuilder toBuilder() => new PublisherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Publisher &&
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
    return (newBuiltValueToStringHelper(r'Publisher')
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

class PublisherBuilder implements Builder<Publisher, PublisherBuilder> {
  _$Publisher? _$v;

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

  PublisherBuilder() {
    Publisher._setDefaults(this);
  }

  PublisherBuilder get _$this {
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
  void replace(Publisher other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Publisher;
  }

  @override
  void update(void Function(PublisherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Publisher build() => _build();

  _$Publisher _build() {
    final _$result = _$v ??
        new _$Publisher._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Publisher', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Publisher', 'name'),
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, r'Publisher', 'slug'),
            image: image,
            imageBackground: imageBackground,
            gamesCount: gamesCount,
            isSelected: BuiltValueNullFieldError.checkNotNull(
                isSelected, r'Publisher', 'isSelected'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
