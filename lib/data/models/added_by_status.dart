import 'dart:convert';
import 'serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'added_by_status.g.dart';

abstract class AddedByStatus
    implements Built<AddedByStatus, AddedByStatusBuilder> {
  AddedByStatus._();

  factory AddedByStatus(Function(AddedByStatusBuilder b) updates) =
      _$AddedByStatus;

  static Serializer<AddedByStatus> get serializer => _$addedByStatusSerializer;

  static AddedByStatus? fromJson(String jsonString) {
    return serializers.deserializeWith(
      AddedByStatus.serializer,
      json.decode(jsonString),
    );
  }

  @BuiltValueField(wireName: 'owned')
  int get owned;
  @BuiltValueField(wireName: 'yet')
  int? get yet;
  @BuiltValueField(wireName: 'beaten')
  int? get beaten;
  @BuiltValueField(wireName: 'toplay')
  int? get toplay;
  @BuiltValueField(wireName: 'dropped')
  int? get dropped;
  @BuiltValueField(wireName: 'playing')
  int? get playing;
}
