// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rating> _$ratingSerializer = new _$RatingSerializer();

class _$RatingSerializer implements StructuredSerializer<Rating> {
  @override
  final Iterable<Type> types = const [Rating, _$Rating];
  @override
  final String wireName = 'Rating';

  @override
  Iterable<Object?> serialize(Serializers serializers, Rating object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'percent',
      serializers.serialize(object.percent,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Rating deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'percent':
          result.percent = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Rating extends Rating {
  @override
  final int id;
  @override
  final String title;
  @override
  final int count;
  @override
  final double percent;

  factory _$Rating([void Function(RatingBuilder)? updates]) =>
      (new RatingBuilder()..update(updates))._build();

  _$Rating._(
      {required this.id,
      required this.title,
      required this.count,
      required this.percent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Rating', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'Rating', 'title');
    BuiltValueNullFieldError.checkNotNull(count, r'Rating', 'count');
    BuiltValueNullFieldError.checkNotNull(percent, r'Rating', 'percent');
  }

  @override
  Rating rebuild(void Function(RatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingBuilder toBuilder() => new RatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rating &&
        id == other.id &&
        title == other.title &&
        count == other.count &&
        percent == other.percent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, percent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rating')
          ..add('id', id)
          ..add('title', title)
          ..add('count', count)
          ..add('percent', percent))
        .toString();
  }
}

class RatingBuilder implements Builder<Rating, RatingBuilder> {
  _$Rating? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _percent;
  double? get percent => _$this._percent;
  set percent(double? percent) => _$this._percent = percent;

  RatingBuilder();

  RatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _count = $v.count;
      _percent = $v.percent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Rating;
  }

  @override
  void update(void Function(RatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rating build() => _build();

  _$Rating _build() {
    final _$result = _$v ??
        new _$Rating._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Rating', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Rating', 'title'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'Rating', 'count'),
            percent: BuiltValueNullFieldError.checkNotNull(
                percent, r'Rating', 'percent'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
