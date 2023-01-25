import 'package:bloc_arch/display/explore/tags/tags_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/tags_bloc.dart';
import 'bloc/tags_event.dart';
import 'bloc/tags_state.dart';

class TagsFilterView extends StatelessWidget {
  const TagsFilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagsBloc, TagsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Text('Loading...');
        } else if (state.failure != null) {
          return Text(state.failure!.errorMessage.toString());
        } else if (state.tags != null) {
          return TagsListView(
            onSelected: (index) {
              state.tags![index].isSelected
                  ? context
                      .read<TagsBloc>()
                      .add(TagsEventUnselected(index: index))
                  : context
                      .read<TagsBloc>()
                      .add(TagsEventSelected(index: index));
            },
            tags: state.tags!,
          );
        } else {
          return const Text('null');
        }
      },
    );
  }
}
