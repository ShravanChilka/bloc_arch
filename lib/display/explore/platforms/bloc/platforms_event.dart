import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class PlatformsEvent {
  const PlatformsEvent();
}

@immutable
class PlatformsEventGetAll extends PlatformsEvent {
  const PlatformsEventGetAll();
}
