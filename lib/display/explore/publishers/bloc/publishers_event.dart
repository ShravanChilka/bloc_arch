import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class PublishersEvent {
  const PublishersEvent();
}

@immutable
class PublishersEventGetAll extends PublishersEvent {
  const PublishersEventGetAll();
}
