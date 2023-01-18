import '../../data/models/developer.dart';
import '../../data/models/platform.dart';
import '../../data/models/publisher.dart';
import '../../data/models/genre.dart';
import '../../data/models/game.dart';
import '../../data/models/creator.dart';
import '../../core/errors/failures.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:dartz/dartz.dart' show Either;

@immutable
abstract class GamesRepository {
  const GamesRepository();

  Future<Either<Failure, List<GameDetails>>> getAllGames({
    Map<String, String>? queryParameters,
  });
  Future<Either<Failure, List<Genre>>> getAllGenres();
  Future<Either<Failure, List<Creator>>> getAllCreators();
  Future<Either<Failure, List<Developer>>> getAllDevelopers();
  Future<Either<Failure, List<Platform>>> getAllPlatforms();
  Future<Either<Failure, List<Platform>>> getAllParentPlatforms();
  Future<Either<Failure, List<Publisher>>> getAllPublishers();
  Future<Either<Failure, List<Publisher>>> getAllTags();
  Future<Either<Failure, List<Publisher>>> getAllStores();
}
