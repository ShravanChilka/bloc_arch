import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AllGamesEvent {
  const AllGamesEvent();
}

@immutable
class AllGamesEventSearch extends AllGamesEvent {
  final String search;
  const AllGamesEventSearch({
    required this.search,
  });
}

@immutable
class AllGamesEventGenre extends AllGamesEvent {
  final int id;
  const AllGamesEventGenre({
    required this.id,
  });
}

@immutable
class AllGamesEventGetAllGames extends AllGamesEvent {
  const AllGamesEventGetAllGames();
}

@immutable
class AllGamesEventGetAllGenres extends AllGamesEvent {
  const AllGamesEventGetAllGenres();
}
