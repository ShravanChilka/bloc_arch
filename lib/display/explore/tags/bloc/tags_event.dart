import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class TagsEvent {
  const TagsEvent();
}

@immutable
class TagsEventGetAll extends TagsEvent {
  const TagsEventGetAll();
}

@immutable
class TagsEventSelected extends TagsEvent {
  final int index;
  const TagsEventSelected({
    required this.index,
  });
}

@immutable
class TagsEventUnselected extends TagsEvent {
  final int index;
  const TagsEventUnselected({
    required this.index,
  });
}

@immutable
class TagsEventUnselectAll extends TagsEvent {
  const TagsEventUnselectAll();
}
