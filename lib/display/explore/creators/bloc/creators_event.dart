import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class CreatorsEvent {
  const CreatorsEvent();
}

@immutable
class CreatorsEventGetAll extends CreatorsEvent {
  const CreatorsEventGetAll();
}
