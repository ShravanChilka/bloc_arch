import 'package:bloc_arch/core/connection/network_info.dart';
import 'package:bloc_arch/data/data_sources/games_remote_data_source.dart';
import 'package:bloc_arch/data/repository_impl/games_repository_impl.dart';
import 'explore/tags/bloc/tags_bloc.dart';
import 'home_page_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show Client;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'explore/games/bloc/games_bloc.dart';
import 'explore/games/bloc/games_event.dart';
import 'explore/genres/bloc/genres_bloc.dart';
import 'explore/genres/bloc/genres_event.dart';
import 'explore/platforms/bloc/platforms_event.dart';
import 'explore/publishers/bloc/publishers_event.dart';
import 'explore/stores/bloc/stores_event.dart';
import 'explore/tags/bloc/tags_event.dart';
import 'explore/creators/bloc/creators_bloc.dart';
import 'explore/creators/bloc/creators_event.dart';
import 'explore/developers/bloc/developers_bloc.dart';
import 'explore/developers/bloc/developers_event.dart';
import 'explore/platforms/bloc/platforms_bloc.dart';
import 'explore/publishers/bloc/publishers_bloc.dart';
import 'explore/stores/bloc/stores_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => GamesRepositoryImpl(
        networkInfo: NetworkInfoImpl(
          connectivity: Connectivity(),
        ),
        remoteDataSource: GamesRemoteDataSourceImpl(
          client: http.Client(),
          baseUrl: 'api.rawg.io',
        ),
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CreatorsBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const CreatorsEventGetAll()),
          ),
          BlocProvider(
            create: (context) => DevelopersBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const DevelopersEventGetAll()),
          ),
          BlocProvider(
            create: (context) => GamesBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const GamesEventGetAllGames()),
          ),
          BlocProvider(
            create: (context) => GenresBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const GenresEventGetAll()),
          ),
          BlocProvider(
            create: (context) => PlatformsBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const PlatformsEventGetAll()),
          ),
          BlocProvider(
            create: (context) => PublishersBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const PublishersEventGetAll()),
          ),
          BlocProvider(
            create: (context) => StoresBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const StoresEventGetAll()),
          ),
          BlocProvider(
            create: (context) => TagsBloc(
              repository: context.read<GamesRepositoryImpl>(),
            )..add(const TagsEventGetAll()),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const HomePageView(),
        ),
      ),
    );
  }
}
