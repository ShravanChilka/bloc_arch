import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/developer.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllDevelopers {
  final GamesRepository repository;

  GetAllDevelopers(this.repository);

  Future<Either<Failure, List<Developer>>> call(NoParams params) async =>
      await repository.getAllDevelopers();
}
