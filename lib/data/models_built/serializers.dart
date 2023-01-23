import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'game.dart';
import 'added_by_status.dart';
import 'esrb_rating.dart';
import 'genre.dart';
import 'platform.dart';
import 'rating.dart';
import 'short_screenshot.dart';
import 'store.dart';
import 'tag.dart';
part 'serializers.g.dart';

@SerializersFor([
  GameResult,
  Game,
  AddedByStatus,
  EsrbRating,
  Genre,
  PlatformResult,
  Platform,
  Rating,
  ShortScreenshot,
  StoreResult,
  Store,
  Tag,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
