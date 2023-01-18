import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/creator.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllCreators {
  final GamesRepository repository;

  GetAllCreators(this.repository);

  Future<Either<Failure, List<Creator>>> call(NoParams params) async =>
      await repository.getAllCreators();
}
