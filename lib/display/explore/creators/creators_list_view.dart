import 'package:bloc_arch/display/explore/creators/bloc/creators_bloc.dart';
import 'package:bloc_arch/display/explore/creators/bloc/creators_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatorsListView extends StatelessWidget {
  const CreatorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatorsBloc, CreatorsState>(
      builder: (context, state) {
        final creators = state.creators;
        final isLoading = state.isLoading;
        final failure = state.failure;
        if (isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (failure != null) {
          return Text(failure.toString());
        } else if (creators != null) {
          return ListView.builder(
            itemCount: creators.length,
            itemBuilder: (context, index) {
              return Text(creators[index].name);
            },
          );
        } else {
          return const Text('No data found!');
        }
      },
    );
  }
}
