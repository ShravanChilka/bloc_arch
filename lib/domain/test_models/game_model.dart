import 'added_by_status_model.dart';
import 'esrb_rating_model.dart';
import 'genre_model.dart';
import 'platform_model.dart';
import 'rating_model.dart';
import 'short_screenshot_model.dart';
import 'store_model.dart';
import 'tag_model.dart';
import 'package:json_annotation/json_annotation.dart';
import '../entities/game.dart';
//part 'game_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GameModel extends Game {
  GameModel({
    required super.id,
    required super.slug,
    required super.name,
    required super.added,
    required super.tba,
    required super.rating,
    required super.ratingTop,
    required super.ratingsCount,
    required super.suggestionsCount,
    required super.playtime,
    required super.updated,
    required super.reviewsCount,
    required super.reviewsTextCount,
    required List<RatingModel> ratings,
    super.backgroundImage,
    super.metacritic,
    super.released,
    List<ShortScreenshotModel>? shortScreenshots,
    // AddedByStatusModel? addedByStatus,
    // final EsrbRatingModel? esrbRating,
    required List<PlatformModelResult> platforms,
    required List<StoreModelResult> stores,
    required List<TagModel> tags,
    required List<PlatformModelResult> parentPlatforms,
    required List<GenreModel> genres,
  }) : super(
          ratings: ratings,
          platforms: platforms.map((e) => e.platform).toList(),
          stores: stores.map((e) => e.store).toList(),
          parentPlatforms: parentPlatforms.map((e) => e.platform).toList(),
          genres: genres,
          tags: tags,
          shortScreenshots: shortScreenshots,
        );

  // factory GameModel.fromJson(Map<String, dynamic> json) =>
  //     _$GameModelFromJson(json);
}
