import 'bloc/all_games_bloc.dart';
import 'bloc/all_games_event.dart';
import 'bloc/all_games_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllGamesView extends StatelessWidget {
  const AllGamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllGamesBloc, AllGamesState>(
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
                      .read<AllGamesBloc>()
                      .add(const AllGamesEventGetAllGames()),
                  child: const Text('Refresh'))
            ],
          );
        } else {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: state.games == null ? 0 : state.games!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: state.games![index].backgroundImage != null
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
          );
        }
      },
    );
  }
}
