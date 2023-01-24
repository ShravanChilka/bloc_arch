import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class GenresEvent {
  const GenresEvent();
}

@immutable
class GenresEventGetAll extends GenresEvent {
  const GenresEventGetAll();
}

@immutable
class GenresEventSelected extends GenresEvent {
  final int index;
  const GenresEventSelected({
    required this.index,
  });
}

@immutable
class GenresEventUnselected extends GenresEvent {
  final int index;
  const GenresEventUnselected({
    required this.index,
  });
}

@immutable
class GenresEventUnselectAll extends GenresEvent {
  const GenresEventUnselectAll();
}
