import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:python_shell/python_shell.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String data = 'NA';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Text(data),
            ElevatedButton(
                onPressed: () => runPythonCodeClickEvent(context),
                child: const Text('Run Python Code')),
          ],
        ),
      ),
    );
  }

  void runPythonCodeClickEvent(BuildContext context) {
    final instance = ShellManager.getInstance('default');
    instance.runFile('assets/test.py',
        listener: ShellListener(
          onMessage: (String message) {
            setState(() => data = message);
            log(message);
          },
          onComplete: () {
            log('Completed');
          },
          onError: (Object object, StackTrace stackTrace) {
            log(object.toString());
          },
        ));
  }
}
