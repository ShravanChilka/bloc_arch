import 'dart:developer';

import 'package:bloc_arch/display/explore/creators/bloc/creators_bloc.dart';
import 'package:bloc_arch/display/explore/creators/bloc/creators_state.dart';
import 'package:bloc_arch/display/explore/developers/bloc/developers_bloc.dart';
import 'package:bloc_arch/display/explore/developers/bloc/developers_state.dart';
import 'package:bloc_arch/display/explore/games/bloc/games_bloc.dart';
import 'package:bloc_arch/display/explore/games/bloc/games_event.dart';
import 'package:bloc_arch/display/explore/games/bloc/games_state.dart';
import 'package:bloc_arch/display/explore/games/games_list_view.dart';
import 'package:bloc_arch/display/explore/genres/all_genres_view.dart';
import 'package:bloc_arch/display/explore/genres/bloc/genres_bloc.dart';
import 'package:bloc_arch/display/explore/genres/bloc/genres_event.dart';
import 'package:bloc_arch/display/explore/genres/bloc/genres_state.dart';
import 'package:bloc_arch/display/explore/platforms/bloc/platforms_bloc.dart';
import 'package:bloc_arch/display/explore/platforms/bloc/platforms_state.dart';
import 'package:bloc_arch/display/explore/publishers/bloc/publishers_bloc.dart';
import 'package:bloc_arch/display/explore/publishers/bloc/publishers_state.dart';
import 'package:bloc_arch/display/explore/stores/bloc/stores_bloc.dart';
import 'package:bloc_arch/display/explore/stores/bloc/stores_state.dart';
import 'package:bloc_arch/display/explore/tags/bloc/tags_bloc.dart';
import 'package:bloc_arch/display/explore/tags/bloc/tags_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final genres = context.read<GenresBloc>().state.genres;
                context.read<GamesBloc>().add(GamesEventFilter(genres: genres));
              },
              child: const Text('Filter'),
            ),
            const AllGenresView(),
            const AllGamesView(),
          ],
        ),
      ),
    );
  }
}
