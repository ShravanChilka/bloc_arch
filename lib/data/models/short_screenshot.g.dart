// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_screenshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShortScreenshot> _$shortScreenshotSerializer =
    new _$ShortScreenshotSerializer();

class _$ShortScreenshotSerializer
    implements StructuredSerializer<ShortScreenshot> {
  @override
  final Iterable<Type> types = const [ShortScreenshot, _$ShortScreenshot];
  @override
  final String wireName = 'ShortScreenshot';

  @override
  Iterable<Object?> serialize(Serializers serializers, ShortScreenshot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ShortScreenshot deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShortScreenshotBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ShortScreenshot extends ShortScreenshot {
  @override
  final int id;
  @override
  final String image;

  factory _$ShortScreenshot([void Function(ShortScreenshotBuilder)? updates]) =>
      (new ShortScreenshotBuilder()..update(updates))._build();

  _$ShortScreenshot._({required this.id, required this.image}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ShortScreenshot', 'id');
    BuiltValueNullFieldError.checkNotNull(image, r'ShortScreenshot', 'image');
  }

  @override
  ShortScreenshot rebuild(void Function(ShortScreenshotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortScreenshotBuilder toBuilder() =>
      new ShortScreenshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortScreenshot && id == other.id && image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShortScreenshot')
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class ShortScreenshotBuilder
    implements Builder<ShortScreenshot, ShortScreenshotBuilder> {
  _$ShortScreenshot? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ShortScreenshotBuilder();

  ShortScreenshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortScreenshot other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShortScreenshot;
  }

  @override
  void update(void Function(ShortScreenshotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShortScreenshot build() => _build();

  _$ShortScreenshot _build() {
    final _$result = _$v ??
        new _$ShortScreenshot._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ShortScreenshot', 'id'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, r'ShortScreenshot', 'image'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
