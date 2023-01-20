import 'package:bloc_arch/display/explore/creators/bloc/creators_bloc.dart';
import 'package:bloc_arch/display/explore/creators/bloc/creators_state.dart';
import 'package:bloc_arch/display/explore/developers/bloc/developers_bloc.dart';
import 'package:bloc_arch/display/explore/developers/bloc/developers_state.dart';
import 'package:bloc_arch/display/explore/games/bloc/games_bloc.dart';
import 'package:bloc_arch/display/explore/games/bloc/games_state.dart';
import 'package:bloc_arch/display/explore/genres/bloc/genres_bloc.dart';
import 'package:bloc_arch/display/explore/genres/bloc/genres_event.dart';
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
                onPressed: () =>
                    context.read<GenresBloc>().add(const GenresEventGetAll()),
                child: const Text('Genres')),
            BlocBuilder<TagsBloc, TagsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Text('Loading...');
                } else if (state.failure != null) {
                  return Text(state.failure!.errorMessage.toString());
                } else if (state.tags != null) {
                  return Text(state.tags!.length.toString());
                } else {
                  return const Text('null');
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
