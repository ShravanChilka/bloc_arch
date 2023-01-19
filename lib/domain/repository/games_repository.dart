import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/data/models/store.dart';

import '../../data/models/developer.dart';
import '../../data/models/platform.dart';
import '../../data/models/publisher.dart';
import '../../data/models/genre.dart';
import '../../data/models/game.dart';
import '../../data/models/creator.dart';
import '../../data/models/tag.dart';
import '../../core/errors/failures.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:dartz/dartz.dart' show Either;

@immutable
abstract class GamesRepository {
  const GamesRepository();

  Future<Either<Failure, List<GameDetails>>> getAllGames({
    required Params params,
  });
  Future<Either<Failure, List<Genre>>> getAllGenres({
    required Params params,
  });
  Future<Either<Failure, List<Creator>>> getAllCreators({
    required Params params,
  });
  Future<Either<Failure, List<Developer>>> getAllDevelopers({
    required Params params,
  });
  Future<Either<Failure, List<Platform>>> getAllPlatforms({
    required Params params,
  });
  Future<Either<Failure, List<Platform>>> getAllParentPlatforms({
    required Params params,
  });
  Future<Either<Failure, List<Publisher>>> getAllPublishers({
    required Params params,
  });
  Future<Either<Failure, List<Tag>>> getAllTags({
    required Params params,
  });
  Future<Either<Failure, List<Store>>> getAllStores({
    required Params params,
  });
}
