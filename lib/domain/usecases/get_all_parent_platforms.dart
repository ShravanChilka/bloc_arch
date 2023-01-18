import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/platform.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllParentPlatforms {
  final GamesRepository repository;

  GetAllParentPlatforms(this.repository);

  Future<Either<Failure, List<Platform>>> call(NoParams params) async =>
      await repository.getAllPlatforms();
}
