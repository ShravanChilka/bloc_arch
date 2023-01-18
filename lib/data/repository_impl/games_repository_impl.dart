import 'package:bloc_arch/core/connection/network_info.dart';
import 'package:bloc_arch/core/errors/exceptions.dart';
import 'package:bloc_arch/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show immutable;
import '../data_sources/games_remote_data_source.dart';
import '../models/models_export.dart';
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
      try {
        final result = await remoteDataSource.getAllCreators();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Developer>>> getAllDevelopers() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllDevelopers();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<GameDetails>>> getAllGames({
    Map<String, String>? queryParameters,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllGames();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Genre>>> getAllGenres() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllGenres();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Platform>>> getAllParentPlatforms() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllParentPlatforms();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Platform>>> getAllPlatforms() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllParentPlatforms();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Publisher>>> getAllPublishers() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllPublishers();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Store>>> getAllStores() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllStores();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Tag>>> getAllTags() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllTags();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
