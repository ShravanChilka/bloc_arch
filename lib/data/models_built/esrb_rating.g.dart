// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esrb_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EsrbRating> _$esrbRatingSerializer = new _$EsrbRatingSerializer();

class _$EsrbRatingSerializer implements StructuredSerializer<EsrbRating> {
  @override
  final Iterable<Type> types = const [EsrbRating, _$EsrbRating];
  @override
  final String wireName = 'EsrbRating';

  @override
  Iterable<Object?> serialize(Serializers serializers, EsrbRating object,
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
  EsrbRating deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EsrbRatingBuilder();

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

class _$EsrbRating extends EsrbRating {
  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  factory _$EsrbRating([void Function(EsrbRatingBuilder)? updates]) =>
      (new EsrbRatingBuilder()..update(updates))._build();

  _$EsrbRating._({required this.id, required this.name, required this.slug})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'EsrbRating', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'EsrbRating', 'name');
    BuiltValueNullFieldError.checkNotNull(slug, r'EsrbRating', 'slug');
  }

  @override
  EsrbRating rebuild(void Function(EsrbRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EsrbRatingBuilder toBuilder() => new EsrbRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EsrbRating &&
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
    return (newBuiltValueToStringHelper(r'EsrbRating')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class EsrbRatingBuilder implements Builder<EsrbRating, EsrbRatingBuilder> {
  _$EsrbRating? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  EsrbRatingBuilder();

  EsrbRatingBuilder get _$this {
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
  void replace(EsrbRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EsrbRating;
  }

  @override
  void update(void Function(EsrbRatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EsrbRating build() => _build();

  _$EsrbRating _build() {
    final _$result = _$v ??
        new _$EsrbRating._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'EsrbRating', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'EsrbRating', 'name'),
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, r'EsrbRating', 'slug'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
