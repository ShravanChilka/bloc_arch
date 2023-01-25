import 'package:bloc_arch/display/explore/games/bloc/games_event.dart';
import 'package:bloc_arch/display/explore/games/games_list_view.dart';
import 'package:bloc_arch/display/explore/genres/all_genres_view.dart';
import 'package:bloc_arch/display/explore/tags/tags_filter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'creators/bloc/creators_bloc.dart';
import 'developers/bloc/developers_bloc.dart';
import 'games/bloc/games_bloc.dart';
import 'genres/bloc/genres_bloc.dart';
import 'platforms/bloc/platforms_bloc.dart';
import 'publishers/bloc/publishers_bloc.dart';
import 'stores/bloc/stores_bloc.dart';
import 'tags/bloc/tags_bloc.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              final genres = context.read<GenresBloc>().state.genres;
              final tags = context.read<TagsBloc>().state.tags;
              final developers =
                  context.read<DevelopersBloc>().state.developers;
              final creators = context.read<CreatorsBloc>().state.creators;
              final platforms = context.read<PlatformsBloc>().state.platforms;
              final publishers =
                  context.read<PublishersBloc>().state.publishers;
              final stores = context.read<StoresBloc>().state.stores;
              //* filter event
              context.read<GamesBloc>().add(
                    GamesEventFilter(
                      genres: genres,
                      tags: tags,
                      developers: developers,
                      creators: creators,
                      platforms: platforms,
                      publishers: publishers,
                      stores: stores,
                    ),
                  );
            },
            child: const Text('Filter'),
          ),
          const AllGenresView(),
          const TagsFilterView(),
          const AllGamesView(),
        ],
      ),
    );
  }
}
