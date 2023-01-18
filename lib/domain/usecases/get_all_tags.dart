import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/tag.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllTags {
  final GamesRepository repository;

  GetAllTags(this.repository);

  Future<Either<Failure, List<Tag>>> call(NoParams params) async =>
      await repository.getAllTags();
}
