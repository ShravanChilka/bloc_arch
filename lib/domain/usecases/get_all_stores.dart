import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:dartz/dartz.dart';
import '../../data/models/store.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class GetAllStores {
  final GamesRepository repository;

  GetAllStores(this.repository);

  Future<Either<Failure, List<Store>>> call(Params params) async =>
      await repository.getAllStores(params: params);
}
