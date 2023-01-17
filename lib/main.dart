import 'package:bloc_arch/firebase_options.dart';
import 'package:bloc_arch/views/app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:developer' as devtools show log;
import 'package:python_shell/python_shell.dart';

extension Log on Object {
  void log() => devtools.log(toString());
}

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  var shell = PythonShell(PythonShellConfig());
  await shell.initialize();
  runApp(
    const App(),
  );
}
