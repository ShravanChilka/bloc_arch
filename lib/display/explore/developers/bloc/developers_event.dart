import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class DevelopersEvent {
  const DevelopersEvent();
}

@immutable
class DevelopersEventGetAll extends DevelopersEvent {
  const DevelopersEventGetAll();
}

@immutable
class DevelopersEventSelected extends DevelopersEvent {
  final int index;
  const DevelopersEventSelected({
    required this.index,
  });
}

@immutable
class DevelopersEventUnselected extends DevelopersEvent {
  final int index;
  const DevelopersEventUnselected({
    required this.index,
  });
}

@immutable
class DevelopersEventUnselectAll extends DevelopersEvent {
  const DevelopersEventUnselectAll();
}
