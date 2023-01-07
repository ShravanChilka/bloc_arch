import 'package:bloc_arch/api/login_api.dart';
import 'package:bloc_arch/api/notes_api.dart';
import 'package:bloc_arch/bloc/actions.dart';
import 'package:bloc_arch/bloc/app_bloc.dart';
import 'package:bloc_arch/bloc/app_state.dart';
import 'package:bloc_arch/dialogs/generic_dialog.dart';
import 'package:bloc_arch/dialogs/loading_screen.dart';
import 'package:bloc_arch/models.dart';
import 'package:bloc_arch/strings.dart';
import 'package:bloc_arch/views/iterable_list_view.dart';
import 'package:bloc_arch/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppBloc(
        loginApi: LoginApi(),
        notesApi: NotesApi(),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text(homePage)),
        body: BlocConsumer<AppBloc, AppState>(
          listener: (context, state) {
            // loading screen
            if (state.isLoading) {
              LoadingScreen.instance().show(
                context: context,
                text: pleaseWait,
              );
            } else {
              LoadingScreen.instance().hide();
            }
            // display possible errors
            final loginError = state.loginError;
            if (loginError != null) {
              showGenericDialog(
                context: context,
                title: loginErrorDialogTitle,
                content: loginErrorDialogDescription,
                optionBuilder: () => {'OK': true},
              );
            }
            // if we are logged in, but we have no fetched notes, fetch them now
            if (state.isLoading == false &&
                state.loginError == null &&
                state.loginHandle == const LoginHandle.shravan() &&
                state.fetchedNotes == null) {
              context.read<AppBloc>().add(const LoadNotesAction());
            }
          },
          builder: (context, state) {
            if (state.fetchedNotes == null) {
              return LoginView(
                onLoginTapped: (email, password) {
                  context
                      .read<AppBloc>()
                      .add(LoginAction(email: email, password: password));
                },
              );
            } else {
              return IterableListView(iterable: state.fetchedNotes!);
            }
          },
        ),
      ),
    );
  }
}
