// import 'dart:developer';
// import 'package:bloc_arch/repository/errors/errors.dart';
// import 'package:bloc_arch/repository/models/creator.dart';
// import 'package:bloc_arch/repository/models/genre.dart';
// import 'package:bloc_arch/repository/models/platform.dart';
// import 'package:bloc_arch/repository/models/publisher.dart';
// import 'package:bloc_arch/repository/models/result.dart';
// import 'package:bloc_arch/repository/models/store.dart';
// import 'package:bloc_arch/repository/models/tag.dart';
// import 'package:http/http.dart' show Client, Response;
// import 'package:bloc_arch/repository/models/game.dart';
// import 'package:bloc_arch/utils/contants.dart';
// import 'package:flutter/foundation.dart' show immutable;
// import 'dart:convert';
// import 'package:dartz/dartz.dart' show Either;
// import '../game_repository.dart';

// @immutable
// class GameRepositoryImpl implements GameRepository {
//   final Client client;
//   final String baseUrl;

//   const GameRepositoryImpl({
//     required this.client,
//     required this.baseUrl,
//   });
// }

// @immutable
// class ApiService {
//   const ApiService({
//     required this.client,
//     required this.baseUrl,
//   });

//   final Client client;
//   final String baseUrl;

//   Uri getUri({required String path, Map<String, String>? queryParameter}) {
//     final parameters = <String, String>{
//       'key': apiKey,
//     };
//     if (queryParameter != null) {
//       parameters.addAll(queryParameter);
//     }
//     return Uri.http(
//       'api.rawg.io',
//       '/api/$path',
//       parameters,
//     );
//   }

//   Future<List<GameDetails>> getAllGames() async {
//     try {
//       final Response response = await client.get(getUri(path: 'games'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final GameDetailsResult gameDetailsResult =
//               GameDetailsResult.fromJson(jsonDecode(response.body));
//           log(gameDetailsResult.results.toString());
//           return gameDetailsResult.results;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<GameDetails> getGameById() async {
//     try {
//       final Response response = await client.get(getUri(path: 'games/12020'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final GameDetails gameDetails =
//               GameDetails.fromJson(jsonDecode(response.body));
//           log(gameDetails.toString());
//           return gameDetails;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<List<Genre>> getAllGenres() async {
//     try {
//       final Response response = await client.get(getUri(path: 'genres'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final GenreResult genreResult =
//               GenreResult.fromJson(jsonDecode(response.body));
//           log(genreResult.results.toString());
//           return genreResult.results;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<List<PlatformDetails>> getAllPlatforms() async {
//     try {
//       final Response response = await client.get(getUri(path: 'platforms'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final List<PlatformDetails> platformResult =
//               (jsonDecode(response.body)['results'] as List<dynamic>)
//                   .map((e) => PlatformDetails.fromJson(e))
//                   .toList();
//           log(platformResult.toString());
//           return platformResult;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<List<Publisher>> getAllPublishers() async {
//     try {
//       final Response response = await client.get(getUri(path: 'publishers'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final List<Publisher> publishers =
//               (jsonDecode(response.body)['results'] as List<dynamic>)
//                   .map((e) => Publisher.fromJson(e))
//                   .toList();
//           log(publishers.toString());
//           return publishers;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<List<Store>> getAllStores() async {
//     try {
//       final Response response = await client.get(getUri(path: 'stores'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final List<Store> stores =
//               (jsonDecode(response.body)['results'] as List<dynamic>)
//                   .map((e) => Store.fromJson(e))
//                   .toList();
//           log(stores.toString());
//           return stores;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<List<Tag>> getAllTags() async {
//     try {
//       final Response response = await client.get(getUri(path: 'tags'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final List<Tag> tags =
//               (jsonDecode(response.body)['results'] as List<dynamic>)
//                   .map((e) => Tag.fromJson(e))
//                   .toList();
//           log(tags.toString());
//           return tags;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<List<Creator>> getAllCreators() async {
//     try {
//       final Response response = await client.get(getUri(path: 'creators'));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final List<Creator> tags =
//               (jsonDecode(response.body)['results'] as List<dynamic>)
//                   .map((e) => Creator.fromJson(e))
//                   .toList();
//           log(tags.toString());
//           return tags;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }

//   Future<List<GameDetails>> getAllGamesList() async {
//     try {
//       final Response response = await client.get(getUri(
//         path: 'games',
//         queryParameter: {
//           'page': '1',
//           'page_size': '10',
//         },
//       ));
//       if (response.statusCode == 200) {
//         if (response.body.isNotEmpty) {
//           final List<GameDetails> games =
//               GameDetails.fromJsonList(jsonDecode(response.body)['results']);
//           log(games.toString());
//           log(jsonDecode(response.body)['count'].toString());
//           return games;
//         } else {
//           throw const ApiExceptionEmpty(message: 'Empty Response');
//         }
//       } else {
//         throw ApiExceptionError(
//             message: '${response.statusCode} : invalid status code');
//       }
//     } on ApiException catch (e) {
//       throw ApiExceptionError(message: e.toString());
//     }
//   }
// }
