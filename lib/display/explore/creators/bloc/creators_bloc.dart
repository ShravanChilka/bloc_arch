import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_creators.dart';
import '../../../../data/models/creator.dart';
import 'creators_state.dart';
import 'creators_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatorsBloc extends Bloc<CreatorsEvent, CreatorsState> {
  final GamesRepository repository;
  CreatorsBloc({required this.repository})
      : super(
          const CreatorsState(
            isLoading: false,
            failure: null,
            creators: null,
          ),
        ) {
    on<CreatorsEventGetAll>(_getAllCreatorsEvent);
    on<CreatorsEventSelected>(_creatorSelectedEvent);
    on<CreatorsEventUnselected>(_creatorUnselectedEvent);
    on<CreatorsEventUnselectAll>(_creatorUnselectAll);
  }

  FutureOr<void> _getAllCreatorsEvent(
    CreatorsEventGetAll event,
    Emitter<CreatorsState> emit,
  ) async {
    //* get all creators event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllCreators(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, creators: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, creators: data));
    });
  }

  FutureOr<void> _creatorSelectedEvent(
    CreatorsEventSelected event,
    Emitter<CreatorsState> emit,
  ) {
    List<Creator> creators = state.creators!;
    final int index = event.index;
    creators[index] =
        creators[index].rebuild((builder) => builder..isSelected = true);
    emit(state.copyWith(creators: creators));
  }

  FutureOr<void> _creatorUnselectedEvent(
    CreatorsEventUnselected event,
    Emitter<CreatorsState> emit,
  ) {
    List<Creator> creators = state.creators!;
    final int index = event.index;
    creators[index] =
        creators[index].rebuild((builder) => builder..isSelected = false);
    emit(state.copyWith(creators: creators));
  }

  FutureOr<void> _creatorUnselectAll(
    CreatorsEventUnselectAll event,
    Emitter<CreatorsState> emit,
  ) {
    final creators = state.creators
        ?.map((e) => e.rebuild((b) => b..isSelected = false))
        .toList();
    emit(state.copyWith(creators: creators));
  }
}
