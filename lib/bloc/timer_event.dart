import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class TimerEvent {
  const TimerEvent();
}

@immutable
class TimerEventStarted extends TimerEvent {
  final int duration;
  const TimerEventStarted({
    required this.duration,
  });
}

@immutable
class TimerEventPaused extends TimerEvent {
  const TimerEventPaused();
}

@immutable
class TimerEventResume extends TimerEvent {
  const TimerEventResume();
}

@immutable
class TimerEventReset extends TimerEvent {
  const TimerEventReset();
}

@immutable
class TimerEventTicked extends TimerEvent {
  final int duration;
  const TimerEventTicked({
    required this.duration,
  });
}
