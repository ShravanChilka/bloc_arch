import 'package:bloc_arch/bloc/timer_bloc.dart';
import 'package:bloc_arch/bloc/timer_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/ticker.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(ticker: const Ticker()),
      child: MaterialApp(
        title: 'Counter App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final duration = context.select(
      (TimerBloc timerBloc) => timerBloc.state.duration,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Bloc'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Text(
                duration.toString(),
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => context
                  .read<TimerBloc>()
                  .add(TimerEventStarted(duration: duration)),
              icon: const Icon(Icons.play_arrow),
              label: const Text('Play'),
            ),
            ElevatedButton.icon(
              onPressed: () =>
                  context.read<TimerBloc>().add(const TimerEventPaused()),
              icon: const Icon(Icons.pause),
              label: const Text('Pause'),
            ),
            ElevatedButton.icon(
              onPressed: () =>
                  context.read<TimerBloc>().add(const TimerEventResume()),
              icon: const Icon(Icons.play_arrow),
              label: const Text('Resume'),
            ),
            ElevatedButton.icon(
              onPressed: () =>
                  context.read<TimerBloc>().add(const TimerEventReset()),
              icon: const Icon(Icons.restart_alt),
              label: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
