import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class GamesEvent {
  const GamesEvent();
}

@immutable
class GamesEventSearch extends GamesEvent {
  final String search;
  const GamesEventSearch({
    required this.search,
  });
}

@immutable
class GamesEventGenre extends GamesEvent {
  final int id;
  const GamesEventGenre({
    required this.id,
  });
}

@immutable
class GamesEventGetAllGames extends GamesEvent {
  const GamesEventGetAllGames();
}

@immutable
class GamesEventGetAllGenres extends GamesEvent {
  const GamesEventGetAllGenres();
}
