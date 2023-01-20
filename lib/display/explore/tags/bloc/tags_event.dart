import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class TagsEvent {
  const TagsEvent();
}

@immutable
class TagsEventGetAll extends TagsEvent {
  const TagsEventGetAll();
}
