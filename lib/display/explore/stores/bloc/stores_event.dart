import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class StoresEvent {
  const StoresEvent();
}

@immutable
class StoresEventGetAll extends StoresEvent {
  const StoresEventGetAll();
}

@immutable
class StoresEventSelected extends StoresEvent {
  final int index;
  const StoresEventSelected({
    required this.index,
  });
}

@immutable
class StoresEventUnselected extends StoresEvent {
  final int index;
  const StoresEventUnselected({
    required this.index,
  });
}

@immutable
class StoresEventUnselectAll extends StoresEvent {
  const StoresEventUnselectAll();
}
