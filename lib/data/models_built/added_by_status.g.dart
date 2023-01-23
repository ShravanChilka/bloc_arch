// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'added_by_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddedByStatus> _$addedByStatusSerializer =
    new _$AddedByStatusSerializer();

class _$AddedByStatusSerializer implements StructuredSerializer<AddedByStatus> {
  @override
  final Iterable<Type> types = const [AddedByStatus, _$AddedByStatus];
  @override
  final String wireName = 'AddedByStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddedByStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'owned',
      serializers.serialize(object.owned, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.yet;
    if (value != null) {
      result
        ..add('yet')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.beaten;
    if (value != null) {
      result
        ..add('beaten')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.toplay;
    if (value != null) {
      result
        ..add('toplay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dropped;
    if (value != null) {
      result
        ..add('dropped')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.playing;
    if (value != null) {
      result
        ..add('playing')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AddedByStatus deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddedByStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owned':
          result.owned = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'yet':
          result.yet = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'beaten':
          result.beaten = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'toplay':
          result.toplay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dropped':
          result.dropped = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'playing':
          result.playing = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AddedByStatus extends AddedByStatus {
  @override
  final int owned;
  @override
  final int? yet;
  @override
  final int? beaten;
  @override
  final int? toplay;
  @override
  final int? dropped;
  @override
  final int? playing;

  factory _$AddedByStatus([void Function(AddedByStatusBuilder)? updates]) =>
      (new AddedByStatusBuilder()..update(updates))._build();

  _$AddedByStatus._(
      {required this.owned,
      this.yet,
      this.beaten,
      this.toplay,
      this.dropped,
      this.playing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(owned, r'AddedByStatus', 'owned');
  }

  @override
  AddedByStatus rebuild(void Function(AddedByStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddedByStatusBuilder toBuilder() => new AddedByStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddedByStatus &&
        owned == other.owned &&
        yet == other.yet &&
        beaten == other.beaten &&
        toplay == other.toplay &&
        dropped == other.dropped &&
        playing == other.playing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owned.hashCode);
    _$hash = $jc(_$hash, yet.hashCode);
    _$hash = $jc(_$hash, beaten.hashCode);
    _$hash = $jc(_$hash, toplay.hashCode);
    _$hash = $jc(_$hash, dropped.hashCode);
    _$hash = $jc(_$hash, playing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddedByStatus')
          ..add('owned', owned)
          ..add('yet', yet)
          ..add('beaten', beaten)
          ..add('toplay', toplay)
          ..add('dropped', dropped)
          ..add('playing', playing))
        .toString();
  }
}

class AddedByStatusBuilder
    implements Builder<AddedByStatus, AddedByStatusBuilder> {
  _$AddedByStatus? _$v;

  int? _owned;
  int? get owned => _$this._owned;
  set owned(int? owned) => _$this._owned = owned;

  int? _yet;
  int? get yet => _$this._yet;
  set yet(int? yet) => _$this._yet = yet;

  int? _beaten;
  int? get beaten => _$this._beaten;
  set beaten(int? beaten) => _$this._beaten = beaten;

  int? _toplay;
  int? get toplay => _$this._toplay;
  set toplay(int? toplay) => _$this._toplay = toplay;

  int? _dropped;
  int? get dropped => _$this._dropped;
  set dropped(int? dropped) => _$this._dropped = dropped;

  int? _playing;
  int? get playing => _$this._playing;
  set playing(int? playing) => _$this._playing = playing;

  AddedByStatusBuilder();

  AddedByStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owned = $v.owned;
      _yet = $v.yet;
      _beaten = $v.beaten;
      _toplay = $v.toplay;
      _dropped = $v.dropped;
      _playing = $v.playing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddedByStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddedByStatus;
  }

  @override
  void update(void Function(AddedByStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddedByStatus build() => _build();

  _$AddedByStatus _build() {
    final _$result = _$v ??
        new _$AddedByStatus._(
            owned: BuiltValueNullFieldError.checkNotNull(
                owned, r'AddedByStatus', 'owned'),
            yet: yet,
            beaten: beaten,
            toplay: toplay,
            dropped: dropped,
            playing: playing);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
