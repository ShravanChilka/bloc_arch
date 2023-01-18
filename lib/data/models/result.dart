import 'creator.dart';
import 'game.dart';
import 'package:json_annotation/json_annotation.dart';
part 'result.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Result<T> {
  final int count;
  @ModelConverter()
  final List<T> results;

  Result({
    required this.count,
    required this.results,
  });

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson<T>(json);
}

class ModelConverter<T> implements JsonConverter<T, Object> {
  const ModelConverter();

  @override
  T fromJson(Object data) {
    if (data is Map<String, dynamic>) {
      if (T is GameDetails) {
        return Game.fromJson(data) as T;
      }
      if (T is Creator) {
        return Creator.fromJson(data) as T;
      }
      return [] as T;
    }
    return [] as T;
  }

  @override
  Object toJson(T object) {
    throw UnimplementedError();
  }
}
