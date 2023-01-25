import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class PlatformsEvent {
  const PlatformsEvent();
}

@immutable
class PlatformsEventGetAll extends PlatformsEvent {
  const PlatformsEventGetAll();
}

@immutable
class PlatformsEventSelected extends PlatformsEvent {
  final int index;
  const PlatformsEventSelected({
    required this.index,
  });
}

@immutable
class PlatformsEventUnselected extends PlatformsEvent {
  final int index;
  const PlatformsEventUnselected({
    required this.index,
  });
}

@immutable
class PlatformsEventUnselectAll extends PlatformsEvent {
  const PlatformsEventUnselectAll();
}
