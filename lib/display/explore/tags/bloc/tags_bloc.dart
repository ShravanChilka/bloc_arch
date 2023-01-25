import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_tags.dart';
import '../../../../data/models/tag.dart';
import 'tags_state.dart';
import 'tags_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagsBloc extends Bloc<TagsEvent, TagsState> {
  final GamesRepository repository;
  TagsBloc({required this.repository})
      : super(
          const TagsState(
            isLoading: false,
            failure: null,
            tags: null,
          ),
        ) {
    on<TagsEventGetAll>(_getAllTagsEvent);
    on<TagsEventSelected>(_tagSelectedEvent);
    on<TagsEventUnselected>(_tagUnselectedEvent);
    on<TagsEventUnselectAll>(_tagUnselectAll);
  }

  FutureOr<void> _getAllTagsEvent(
    TagsEventGetAll event,
    Emitter<TagsState> emit,
  ) async {
    //* get all tags event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllTags(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, tags: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, tags: data));
    });
  }

  FutureOr<void> _tagSelectedEvent(
    TagsEventSelected event,
    Emitter<TagsState> emit,
  ) {
    List<Tag> tags = state.tags!;
    final int index = event.index;
    tags[index] = tags[index].rebuild((builder) => builder..isSelected = true);
    emit(state.copyWith(tags: tags));
  }

  FutureOr<void> _tagUnselectedEvent(
    TagsEventUnselected event,
    Emitter<TagsState> emit,
  ) {
    List<Tag> tags = state.tags!;
    final int index = event.index;
    tags[index] = tags[index].rebuild((builder) => builder..isSelected = false);
    emit(state.copyWith(tags: tags));
  }

  FutureOr<void> _tagUnselectAll(
    TagsEventUnselectAll event,
    Emitter<TagsState> emit,
  ) {
    final tags = state.tags
        ?.map((e) => e.rebuild((b) => b..isSelected = false))
        .toList();
    emit(state.copyWith(tags: tags));
  }
}
