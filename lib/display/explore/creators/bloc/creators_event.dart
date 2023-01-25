import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class CreatorsEvent {
  const CreatorsEvent();
}

@immutable
class CreatorsEventGetAll extends CreatorsEvent {
  const CreatorsEventGetAll();
}

@immutable
class CreatorsEventSelected extends CreatorsEvent {
  final int index;
  const CreatorsEventSelected({
    required this.index,
  });
}

@immutable
class CreatorsEventUnselected extends CreatorsEvent {
  final int index;
  const CreatorsEventUnselected({
    required this.index,
  });
}

@immutable
class CreatorsEventUnselectAll extends CreatorsEvent {
  const CreatorsEventUnselectAll();
}
