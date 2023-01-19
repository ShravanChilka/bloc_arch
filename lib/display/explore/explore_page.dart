import 'package:bloc_arch/display/explore/bloc/explore_games_bloc.dart';
import 'package:bloc_arch/display/explore/bloc/explore_games_event.dart';
import 'package:bloc_arch/display/explore/bloc/explore_games_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExplorePage extends HookWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => context.read<ExploreGamesBloc>().add(
                      ExploreGamesEventSearch(search: searchController.text)),
                  icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
                  label: const Text('Search'),
                ),
              ],
            ),
            BlocBuilder<ExploreGamesBloc, ExploreGamesState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.failure != null) {
                  return Column(
                    children: [
                      Center(
                        child: Text(state.failure!.errorMessage.toString()),
                      ),
                      ElevatedButton(
                          onPressed: () => context
                              .read<ExploreGamesBloc>()
                              .add(const ExploreGamesEventGetAllGames()),
                          child: const Text('Refresh'))
                    ],
                  );
                } else {
                  return Expanded(
                    child: Column(
                      children: [
                        Wrap(
                          children: List.generate(
                              state.genres == null ? 0 : state.genres!.length,
                              (index) {
                            return TextButton(
                                onPressed: () => context
                                    .read<ExploreGamesBloc>()
                                    .add(ExploreGamesEventGenre(
                                        id: state.genres![index].id)),
                                child: Text(state.genres![index].name));
                          }),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                state.games == null ? 0 : state.games!.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: state.games![index].backgroundImage !=
                                        null
                                    ? Image.network(
                                        state.games![index].backgroundImage!,
                                        width: 100,
                                        height: 100,
                                      )
                                    : null,
                                title: Text(state.games![index].name),
                                subtitle: Text(state.games![index].slug),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
