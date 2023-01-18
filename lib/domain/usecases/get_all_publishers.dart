import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/publisher.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllPublishers {
  final GamesRepository repository;

  GetAllPublishers(this.repository);

  Future<Either<Failure, List<Publisher>>> call(NoParams params) async =>
      await repository.getAllPublishers();
}
