import 'package:bloc_arch/bloc/bottom_app_bloc.dart';
import 'package:bloc_arch/models/constants.dart';
import 'package:bloc_arch/views/app_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/top_app_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => TopAppBloc(
                  allUrls: images,
                  waitBeforeLoading: const Duration(seconds: 3)),
            ),
            BlocProvider(
              create: (context) => BottomAppBloc(
                  allUrls: images,
                  waitBeforeLoading: const Duration(seconds: 3)),
            ),
          ],
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              AppBlocView<TopAppBloc>(),
              AppBlocView<BottomAppBloc>(),
            ],
          )),
    ));
  }
}
