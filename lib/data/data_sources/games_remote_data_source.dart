import 'dart:developer';
import 'package:bloc_arch/core/errors/exceptions.dart';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:http/http.dart' as http show Client;
import '../../data/models/models_export.dart';

abstract class GamesRemoteDataSource {
  Future<List<Game>> getAllGames({
    required Params params,
  });
  Future<List<Genre>> getAllGenres({required Params params});
  Future<List<Creator>> getAllCreators({required Params params});
  Future<List<Developer>> getAllDevelopers({required Params params});
  Future<List<Platform>> getAllPlatforms({required Params params});
  Future<List<Platform>> getAllParentPlatforms({required Params params});
  Future<List<Publisher>> getAllPublishers({required Params params});
  Future<List<Tag>> getAllTags({required Params params});
  Future<List<Store>> getAllStores({required Params params});
}

class GamesRemoteDataSourceImpl implements GamesRemoteDataSource {
  final http.Client client;
  final String baseUrl;
  GamesRemoteDataSourceImpl({
    required this.client,
    required this.baseUrl,
  });

  Uri _getUri({required String path, required Map<String, String> params}) {
    return Uri.https(
      baseUrl,
      path,
      params,
    );
  }

  @override
  Future<List<Creator>> getAllCreators({required Params params}) async {
    try {
      final response = await client.get(
        _getUri(
          path: 'api/creators',
          params: params.queryParameter,
        ),
      );
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final CreatorResult? result = CreatorResult.fromJson(response.body);
        if (result != null) {
          return result.creators.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Developer>> getAllDevelopers({required Params params}) async {
    try {
      final response = await client.get(
        _getUri(
          path: 'api/developers',
          params: params.queryParameter,
        ),
      );
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final DeveloperResult? result = DeveloperResult.fromJson(response.body);
        if (result != null) {
          return result.developers.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Game>> getAllGames({
    required Params params,
  }) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/games', params: params.queryParameter));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final GameResult? result = GameResult.fromJson(response.body);
        if (result != null) {
          log('games_length : ${result.games.toList().length}');
          return result.games.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Genre>> getAllGenres({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/genres', params: params.queryParameter));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final GenreResult? result = GenreResult.fromJson(response.body);
        if (result != null) {
          log('genres_length : ${result.genres.toList().length}');
          return result.genres.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Platform>> getAllParentPlatforms({required Params params}) async {
    try {
      final response = await client.get(_getUri(
          path: 'api/platforms/lists/parents', params: params.queryParameter));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final PlatformResult? result = PlatformResult.fromJson(response.body);
        if (result != null) {
          log('parent_platforms_length : ${result.platforms.toList().length}');
          return result.platforms.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Platform>> getAllPlatforms({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/platforms', params: params.queryParameter));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final PlatformResult? result = PlatformResult.fromJson(response.body);
        if (result != null) {
          log('platforms_length : ${result.platforms.toList().length}');
          return result.platforms.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Publisher>> getAllPublishers({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/publishers', params: params.queryParameter));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final PublisherResult? result = PublisherResult.fromJson(response.body);
        if (result != null) {
          log('publishers_length : ${result.publishers.toList().length}');
          return result.publishers.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Store>> getAllStores({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/stores', params: params.queryParameter));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final StoreResult? result = StoreResult.fromJson(response.body);
        if (result != null) {
          log('stores_length : ${result.stores.toList().length}');
          return result.stores.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Tag>> getAllTags({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/tags', params: params.queryParameter));
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final TagResult? result = TagResult.fromJson(response.body);
        if (result != null) {
          log('tags_length : ${result.tags.toList().length}');
          return result.tags.toList();
        }
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Something went wrong');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }
}
