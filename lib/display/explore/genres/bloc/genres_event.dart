import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class GenresEvent {
  const GenresEvent();
}

@immutable
class GenresEventGetAll extends GenresEvent {
  const GenresEventGetAll();
}
