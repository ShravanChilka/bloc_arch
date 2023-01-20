import 'dart:convert';
import 'dart:developer';
import 'package:bloc_arch/core/errors/exceptions.dart';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:http/http.dart' as http show Client;
import '../../data/models/models_export.dart';

abstract class GamesRemoteDataSource {
  Future<List<GameDetails>> getAllGames({
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
    return Uri.http(
      baseUrl,
      path,
      params,
    );
  }

  @override
  Future<List<Creator>> getAllCreators({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/creators', params: params.queryParameter));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Creator> creators =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Creator.fromJson(e))
                  .toList();
          log('creators_length : ${creators.length}');
          return creators;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Developer>> getAllDevelopers({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/developers', params: params.queryParameter));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Developer> developers =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Developer.fromJson(e))
                  .toList();
          log('developers_length : ${developers.length}');
          return developers;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<GameDetails>> getAllGames({
    required Params params,
  }) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/games', params: params.queryParameter));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<GameDetails> games =
              (jsonDecode(response.body)['results'] as List<dynamic>?)
                      ?.map((e) => GameDetails.fromJson(e))
                      .toList() ??
                  [];
          log('games_length : ${games.length}');
          return games;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
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
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Genre> genres =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Genre.fromJson(e))
                  .toList();
          log('genres_length : ${genres.length}');
          return genres;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : Invalid status code');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }

  @override
  Future<List<Platform>> getAllParentPlatforms({required Params params}) async {
    try {
      final response = await client
          .get(_getUri(path: 'api/platforms', params: params.queryParameter));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Platform> parentPlatforms =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Platform.fromJson(e))
                  .toList();
          log('parent_platforms_length : ${parentPlatforms.length}');
          return parentPlatforms;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
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
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Platform> platforms =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Platform.fromJson(e))
                  .toList();
          log('platforms_length : ${platforms.length}');
          return platforms;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
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
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Publisher> publishers =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Publisher.fromJson(e))
                  .toList();
          log('publishers_length : ${publishers.length}');
          return publishers;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
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
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Store> stores =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Store.fromJson(e))
                  .toList();
          log('stores_length : ${stores.length}');
          return stores;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
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
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Tag> tags =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Tag.fromJson(e))
                  .toList();
          log('tags_length : ${tags.length}');
          return tags;
        } else {
          throw const ServerException(exception: 'Empty Response');
        }
      } else {
        throw ServerException(
            exception: '${response.statusCode} : invalid status code');
      }
    } on ServerException catch (e) {
      throw ServerException(exception: e.toString());
    }
  }
}
