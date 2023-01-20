import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_tags.dart';
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
  }

  FutureOr<void> _getAllTagsEvent(
    TagsEventGetAll event,
    Emitter<TagsState> emit,
  ) async {
    //* get all genres event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllTags(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, tags: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, tags: data));
    });
  }
}
