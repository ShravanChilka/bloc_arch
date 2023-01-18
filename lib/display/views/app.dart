import 'package:bloc_arch/core/connection/network_info.dart';
import 'package:bloc_arch/core/errors/failures.dart';
import 'package:bloc_arch/data/data_sources/games_remote_data_source.dart';
import 'package:bloc_arch/data/models/models_export.dart';
import 'package:bloc_arch/data/repository_impl/games_repository_impl.dart';
import 'package:bloc_arch/display/views/home_page_view.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show Client;
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (BuildContext context) => GamesRepositoryImpl(
        networkInfo: NetworkInfoImpl(
          connectivity: Connectivity(),
        ),
        remoteDataSource: GamesRemoteDataSourceImpl(
          client: http.Client(),
          baseUrl: 'api.rawg.io',
        ),
      ),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomePageView(),
      ),
    );
  }
}
