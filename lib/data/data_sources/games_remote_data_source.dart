import 'dart:convert';
import 'dart:developer';
import 'package:bloc_arch/core/errors/exceptions.dart';
import 'package:http/http.dart' as http show Client;
import '../../data/models/models_export.dart';
import '../../utils/contants.dart';

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
  Future<List<Tag>> getAllTags();
  Future<List<Store>> getAllStores();
}

class GamesRemoteDataSourceImpl implements GamesRemoteDataSource {
  final http.Client client;
  final String baseUrl;
  GamesRemoteDataSourceImpl({
    required this.client,
    required this.baseUrl,
  });

  Uri _getUri({required String path, Map<String, String>? queryParameter}) {
    final parameters = <String, String>{
      'key': apiKey,
    };
    if (queryParameter != null) {
      parameters.addAll(queryParameter);
    }
    return Uri.http(
      baseUrl,
      path,
      parameters,
    );
  }

  @override
  Future<List<Creator>> getAllCreators() async {
    try {
      final response = await client.get(_getUri(path: 'api/creators'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Creator> creators =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Creator.fromJson(e))
                  .toList();
          log(creators.toString());
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
  Future<List<Developer>> getAllDevelopers() async {
    try {
      final response = await client.get(_getUri(path: 'api/developers'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Developer> developers =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Developer.fromJson(e))
                  .toList();
          log(developers.toString());
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
    Map<String, String>? queryParameters,
  }) async {
    try {
      final response = await client.get(_getUri(path: 'api/games'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<GameDetails> games =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => GameDetails.fromJson(e))
                  .toList();
          log(games.toString());
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
  Future<List<Genre>> getAllGenres() async {
    try {
      final response = await client.get(_getUri(path: 'api/genres'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Genre> genres =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Genre.fromJson(e))
                  .toList();
          log(genres.toString());
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
  Future<List<Platform>> getAllParentPlatforms() async {
    try {
      final response = await client.get(_getUri(path: 'api/platforms'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Platform> parentPlatforms =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Platform.fromJson(e))
                  .toList();
          log(parentPlatforms.toString());
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
  Future<List<Platform>> getAllPlatforms() async {
    try {
      final response = await client.get(_getUri(path: 'api/platforms'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Platform> platforms =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Platform.fromJson(e))
                  .toList();
          log(platforms.toString());
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
  Future<List<Publisher>> getAllPublishers() async {
    try {
      final response = await client.get(_getUri(path: 'api/publishers'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Publisher> publishers =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Publisher.fromJson(e))
                  .toList();
          log(publishers.toString());
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
  Future<List<Store>> getAllStores() async {
    try {
      final response = await client.get(_getUri(path: 'api/stores'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Store> stores =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Store.fromJson(e))
                  .toList();
          log(stores.toString());
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
  Future<List<Tag>> getAllTags() async {
    try {
      final response = await client.get(_getUri(path: 'api/tags'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final List<Tag> tags =
              (jsonDecode(response.body)['results'] as List<dynamic>)
                  .map((e) => Tag.fromJson(e))
                  .toList();
          log(tags.toString());
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
