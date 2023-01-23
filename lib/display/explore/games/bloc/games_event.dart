// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart' show immutable;

import 'package:bloc_arch/data/models/models_export.dart';

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
class GamesEventGetAllGames extends GamesEvent {
  const GamesEventGetAllGames();
}

@immutable
class GamesEventGenreSelected extends GamesEvent {
  final Genre genre;
  const GamesEventGenreSelected({
    required this.genre,
  });
}

@immutable
class GamesEventTagSelected extends GamesEvent {
  final Tag tag;
  const GamesEventTagSelected({
    required this.tag,
  });
}

@immutable
class GamesEventParentPlatformSelected extends GamesEvent {
  final Platform platform;
  const GamesEventParentPlatformSelected({
    required this.platform,
  });
}

@immutable
class GamesEventFilter extends GamesEvent {
  final List<Platform>? platforms;
  final List<Platform>? parentPlatforms;
  final List<Genre>? genres;
  final List<Store>? stores;
  final List<Tag>? tags;
  final List<Publisher>? publishers;
  final List<Developer>? developers;
  final List<Creator>? creators;

  const GamesEventFilter({
    this.platforms,
    this.parentPlatforms,
    this.genres,
    this.stores,
    this.tags,
    this.publishers,
    this.developers,
    this.creators,
  });
}
