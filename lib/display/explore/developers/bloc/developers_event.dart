import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class DevelopersEvent {
  const DevelopersEvent();
}

@immutable
class DevelopersEventGetAll extends DevelopersEvent {
  const DevelopersEventGetAll();
}
