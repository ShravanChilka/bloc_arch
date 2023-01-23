import 'package:freezed_annotation/freezed_annotation.dart';
part 'person_model.g.dart';
part 'person_model.freezed.dart';

@freezed
class PersonModel with _$PersonModel {
  const factory PersonModel({
    required String name,
    required int id,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, Object?> json) =>
      _$PersonModelFromJson(json);
}
