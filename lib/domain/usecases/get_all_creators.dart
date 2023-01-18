import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/repository/errors/errors.dart';
import 'package:dartz/dartz.dart';

class GetAllCreators {
  final GamesRepository repository;

  GetAllCreators(this.repository);

  Future<Either<ApiException, RandomActivity?>?> call(NoParams params) async {
    return await repository.getRandomActivity();
  }
}
