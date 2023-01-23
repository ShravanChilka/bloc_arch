import 'package:bloc_arch/core/connection/network_info.dart';
import 'package:bloc_arch/core/errors/exceptions.dart';
import 'package:bloc_arch/core/errors/failures.dart';
import 'package:bloc_arch/core/usecases/usecase.dart';
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
  Future<Either<Failure, List<Creator>>> getAllCreators(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllCreators(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Developer>>> getAllDevelopers(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllDevelopers(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Game>>> getAllGames({
    required Params params,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllGames(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Genre>>> getAllGenres(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllGenres(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Platform>>> getAllParentPlatforms(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result =
            await remoteDataSource.getAllParentPlatforms(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Platform>>> getAllPlatforms(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result =
            await remoteDataSource.getAllParentPlatforms(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Publisher>>> getAllPublishers(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllPublishers(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Store>>> getAllStores(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllStores(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<Tag>>> getAllTags(
      {required Params params}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllTags(params: params);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.exception.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
