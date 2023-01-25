import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class PublishersEvent {
  const PublishersEvent();
}

@immutable
class PublishersEventGetAll extends PublishersEvent {
  const PublishersEventGetAll();
}

@immutable
class PublishersEventSelected extends PublishersEvent {
  final int index;
  const PublishersEventSelected({
    required this.index,
  });
}

@immutable
class PublishersEventUnselected extends PublishersEvent {
  final int index;
  const PublishersEventUnselected({
    required this.index,
  });
}

@immutable
class PublishersEventUnselectAll extends PublishersEvent {
  const PublishersEventUnselectAll();
}
