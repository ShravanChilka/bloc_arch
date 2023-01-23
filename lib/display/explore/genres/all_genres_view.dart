import 'dart:developer';

import 'package:bloc_arch/display/explore/genres/bloc/genres_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/genres_bloc.dart';
import 'bloc/genres_state.dart';

class AllGenresView extends StatelessWidget {
  const AllGenresView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenresBloc, GenresState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Text('Loading...');
        } else if (state.failure != null) {
          return Text(state.failure!.errorMessage.toString());
        } else if (state.genres != null) {
          return SizedBox(
            width: double.maxFinite,
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.genres!.length,
              itemBuilder: (context, index) => TextButton(
                child: Text(
                  state.genres![index].name,
                  style: TextStyle(
                    color: state.genres![index].isSelected
                        ? Colors.blue
                        : Colors.red,
                  ),
                ),
                onPressed: () {
                  state.genres![index].isSelected
                      ? context
                          .read<GenresBloc>()
                          .add(GenresEventUnselected(index: index))
                      : context
                          .read<GenresBloc>()
                          .add(GenresEventSelected(index: index));
                },
              ),
            ),
          );
        } else {
          return const Text('null');
        }
      },
    );
  }
}
