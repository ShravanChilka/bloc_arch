import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class StoresEvent {
  const StoresEvent();
}

@immutable
class StoresEventGetAll extends StoresEvent {
  const StoresEventGetAll();
}
