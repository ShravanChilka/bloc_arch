import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/game.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllGames {
  final GamesRepository repository;

  GetAllGames(this.repository);

  Future<Either<Failure, List<GameDetails>>> call(NoParams params) async =>
      await repository.getAllGames();
}
