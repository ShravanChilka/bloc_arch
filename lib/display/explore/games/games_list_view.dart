import 'bloc/games_bloc.dart';
import 'bloc/games_event.dart';
import 'bloc/games_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllGamesView extends StatelessWidget {
  const AllGamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesBloc, GamesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Text('Loading...');
        } else if (state.failure != null) {
          return Text(state.failure!.errorMessage.toString());
        } else if (state.games != null) {
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
        } else {
          return const Text('null');
        }
      },
    );
  }
}
