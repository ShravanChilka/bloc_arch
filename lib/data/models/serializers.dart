import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'models_export.dart';
part 'serializers.g.dart';

@SerializersFor([
  Game,
  GameResult,
  AddedByStatus,
  EsrbRating,
  Genre,
  GenreResult,
  Platform,
  PlatformObject,
  PlatformResult,
  Rating,
  ShortScreenshot,
  Store,
  StoreObject,
  StoreResult,
  Developer,
  DeveloperResult,
  Creator,
  CreatorResult,
  Publisher,
  PublisherResult,
  Tag,
  TagResult,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
