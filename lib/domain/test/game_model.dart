import 'package:bloc_arch/domain/test/added_by_status_model.dart';
import 'package:bloc_arch/domain/test/rating_model.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import '../entities/game.dart';
part 'game_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@immutable
class GameModel extends Game {
  GameModel({
    required super.id,
    required super.slug,
    required super.name,
    required super.added,
    required super.tba,
    required super.rating,
    required super.ratingTop,
    required RatingModelResult ratings,
    required super.ratingsCount,
    required super.suggestionsCount,
    required super.playtime,
    required super.updated,
    required super.platforms,
    required super.reviewsCount,
    required super.reviewsTextCount,
    required super.tags,
    required super.esrbRating,
    required super.parentPlatforms,
    required super.genres,
    AddedByStatusModel? addedByStatus,
    super.backgroundImage,
    super.metacritic,
    super.released,
    super.shortScreenshots,
    super.stores,
  }) : super(
          ratings: ratings.results,
          addedByStatus: addedByStatus,
        );

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
