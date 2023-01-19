import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class ExploreGamesEvent {
  const ExploreGamesEvent();
}

@immutable
class ExploreGamesEventSearch extends ExploreGamesEvent {
  final String search;
  const ExploreGamesEventSearch({
    required this.search,
  });
}

@immutable
class ExploreGamesEventGenre extends ExploreGamesEvent {
  final int id;
  const ExploreGamesEventGenre({
    required this.id,
  });
}

@immutable
class ExploreGamesEventGetAllGames extends ExploreGamesEvent {
  const ExploreGamesEventGetAllGames();
}

@immutable
class ExploreGamesEventGetAllGenres extends ExploreGamesEvent {
  const ExploreGamesEventGetAllGenres();
}
