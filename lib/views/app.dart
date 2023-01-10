import 'package:bloc_arch/bloc/app_bloc.dart';
import 'package:bloc_arch/bloc/app_event.dart';
import 'package:bloc_arch/bloc/app_state.dart';
import 'package:bloc_arch/dialogs/error_dialog.dart';
import 'package:bloc_arch/dialogs/loading_screen.dart';
import 'package:bloc_arch/views/login_view.dart';
import 'package:bloc_arch/views/photo_gallery_view.dart';
import 'package:bloc_arch/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (_) => AppBloc()
        ..add(
          const AppEventInitialize(),
        ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocConsumer<AppBloc, AppState>(
          builder: (context, appState) {
            if (appState is AppStateLoggedOut) {
              return const LogInView();
            } else if (appState is AppStateLoggedIn) {
              return const PhotoGalleryView();
            } else if (appState is AppStateIsInRegistrationView) {
              return const RegisterView();
            } else {
              // this should not happen
              return Container();
            }
          },
          listener: (context, appState) {
            if (appState.isLoading) {
              LoadingScreen.instance()
                  .show(context: context, text: 'Loading...');
            } else {
              LoadingScreen.instance().hide();
            }
            if (appState.authError != null) {
              showErrorDialog(
                authError: appState.authError!,
                context: context,
              );
            }
          },
        ),
      ),
    );
  }
}
