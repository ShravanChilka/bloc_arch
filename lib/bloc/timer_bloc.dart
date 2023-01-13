import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_arch/bloc/timer_event.dart';
import 'package:bloc_arch/bloc/timer_state.dart';
import 'package:bloc_arch/models/ticker.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  static const duration = 30;
  StreamSubscription<int>? _timerSubscription;
  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerStateInitial(duration: duration)) {
    //* timer started event
    on<TimerEventStarted>((event, emit) {
      emit(TimerStateInProgres(duration: event.duration));
      _timerSubscription?.cancel();
      _timerSubscription =
          ticker.tick(ticks: event.duration).listen((duration) {
        add(TimerEventTicked(duration: duration));
      });
    });

    //* timer ticked event
    on<TimerEventTicked>((event, emit) {
      emit(
        event.duration > 0
            ? TimerStateInProgres(duration: event.duration)
            : const TimerStateComplete(),
      );
    });

    //* timer paused event
    on<TimerEventPaused>((event, emit) {
      if (state is TimerStateInProgres) {
        _timerSubscription?.pause();
        emit(TimerStatePause(duration: state.duration));
      }
    });

    //* timer resume event
    on<TimerEventResume>((event, emit) {
      if (state is TimerStatePause) {
        _timerSubscription?.resume();
        emit(TimerStatePause(duration: state.duration));
      }
    });

    //* timer reset event
    on<TimerEventReset>((event, emit) {
      _timerSubscription?.cancel();
      emit(const TimerStateInitial(duration: duration));
    });
  }

  @override
  Future<void> close() {
    _timerSubscription?.cancel();
    return super.close();
  }
}
