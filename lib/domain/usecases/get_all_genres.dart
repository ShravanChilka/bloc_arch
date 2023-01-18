import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/genre.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllGenres {
  final GamesRepository repository;

  GetAllGenres(this.repository);

  Future<Either<Failure, List<Genre>>> call(NoParams params) async =>
      await repository.getAllGenres();
}
