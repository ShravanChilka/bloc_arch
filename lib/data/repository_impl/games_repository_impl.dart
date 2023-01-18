import 'package:bloc_arch/core/connection/network_info.dart';
import 'package:bloc_arch/core/errors/exceptions.dart';
import 'package:bloc_arch/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show immutable;
import '../data_sources/games_remote_data_source.dart';
import '../models/creator.dart';
import '../models/developer.dart';
import '../models/game.dart';
import '../models/genre.dart';
import '../models/platform.dart';
import '../models/publisher.dart';
import '../../domain/repository/games_repository.dart';

@immutable
class GamesRepositoryImpl implements GamesRepository {
  final GamesRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  const GamesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Creator>>> getAllCreators() async {
    if (await networkInfo.isConnected) {
      try {} on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Developer>>> getAllDevelopers() {
    // TODO: implement getAllDevelopers
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GameDetails>>> getAllGames(
      {Map<String, String>? queryParameters}) {
    // TODO: implement getAllGames
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Genre>>> getAllGenres() {
    // TODO: implement getAllGenres
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Platform>>> getAllParentPlatforms() {
    // TODO: implement getAllParentPlatforms
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Platform>>> getAllPlatforms() {
    // TODO: implement getAllPlatforms
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Publisher>>> getAllPublishers() {
    // TODO: implement getAllPublishers
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Publisher>>> getAllStores() {
    // TODO: implement getAllStores
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Publisher>>> getAllTags() {
    // TODO: implement getAllTags
    throw UnimplementedError();
  }
}
