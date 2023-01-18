import '../../data/models/developer.dart';
import '../../data/models/platform.dart';
import '../../data/models/publisher.dart';
import '../../data/models/genre.dart';
import '../../data/models/game.dart';
import '../../data/models/creator.dart';

abstract class GamesRemoteDataSource {
  Future<List<GameDetails>> getAllGames({
    Map<String, String>? queryParameters,
  });
  Future<List<Genre>> getAllGenres();
  Future<List<Creator>> getAllCreators();
  Future<List<Developer>> getAllDevelopers();
  Future<List<Platform>> getAllPlatforms();
  Future<List<Platform>> getAllParentPlatforms();
  Future<List<Publisher>> getAllPublishers();
  Future<List<Publisher>> getAllTags();
  Future<List<Publisher>> getAllStores();
}

class GamesRemoteDataSourceImpl implements GamesRemoteDataSource {
  @override
  Future<List<Creator>> getAllCreators() {
    // TODO: implement getAllCreators
    throw UnimplementedError();
  }

  @override
  Future<List<Developer>> getAllDevelopers() {
    // TODO: implement getAllDevelopers
    throw UnimplementedError();
  }

  @override
  Future<List<GameDetails>> getAllGames(
      {Map<String, String>? queryParameters}) {
    // TODO: implement getAllGames
    throw UnimplementedError();
  }

  @override
  Future<List<Genre>> getAllGenres() {
    // TODO: implement getAllGenres
    throw UnimplementedError();
  }

  @override
  Future<List<Platform>> getAllParentPlatforms() {
    // TODO: implement getAllParentPlatforms
    throw UnimplementedError();
  }

  @override
  Future<List<Platform>> getAllPlatforms() {
    // TODO: implement getAllPlatforms
    throw UnimplementedError();
  }

  @override
  Future<List<Publisher>> getAllPublishers() {
    // TODO: implement getAllPublishers
    throw UnimplementedError();
  }

  @override
  Future<List<Publisher>> getAllStores() {
    // TODO: implement getAllStores
    throw UnimplementedError();
  }

  @override
  Future<List<Publisher>> getAllTags() {
    // TODO: implement getAllTags
    throw UnimplementedError();
  }
}
