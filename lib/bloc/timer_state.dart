import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class TimerState {
  final int duration;
  const TimerState({
    required this.duration,
  });
}

@immutable
class TimerStatePause extends TimerState {
  const TimerStatePause({
    required super.duration,
  });
}

@immutable
class TimerStateInProgres extends TimerState {
  const TimerStateInProgres({
    required super.duration,
  });
}

@immutable
class TimerStateInitial extends TimerState {
  const TimerStateInitial({
    required super.duration,
  });
}

@immutable
class TimerStateComplete extends TimerState {
  const TimerStateComplete() : super(duration: 0);
}
