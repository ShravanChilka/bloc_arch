import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final ColorCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = ColorCubit();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Color?>(
        stream: cubit.stream,
        builder: (context, snapshot) {
          final Widget button = Center(
            child: TextButton(
                onPressed: () => cubit.pickRandomColor(),
                child: const Text('Pick Random Color')),
          );
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return button;
            case ConnectionState.waiting:
              return button;
            case ConnectionState.active:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    color: snapshot.data,
                    child: Center(
                      child: Text(snapshot.data.toString()),
                    ),
                  ),
                  button,
                ],
              );
            case ConnectionState.done:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

Color get randomColor => Color(Random().nextInt(0xffffffff)).withAlpha(0xff);

class ColorCubit extends Cubit<Color?> {
  ColorCubit() : super(null);

  void pickRandomColor() => emit(randomColor);
}
