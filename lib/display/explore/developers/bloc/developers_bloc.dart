import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_developers.dart';
import '../../../../data/models/developer.dart';
import 'developers_state.dart';
import 'developers_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DevelopersBloc extends Bloc<DevelopersEvent, DevelopersState> {
  final GamesRepository repository;
  DevelopersBloc({required this.repository})
      : super(
          const DevelopersState(
            isLoading: false,
            failure: null,
            developers: null,
          ),
        ) {
    on<DevelopersEventGetAll>(_getAllDevelopersEvent);
    on<DevelopersEventSelected>(_developerSelectedEvent);
    on<DevelopersEventUnselected>(_developerUnselectedEvent);
    on<DevelopersEventUnselectAll>(_developerUnselectAll);
  }

  FutureOr<void> _getAllDevelopersEvent(
    DevelopersEventGetAll event,
    Emitter<DevelopersState> emit,
  ) async {
    //* get all developers event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllDevelopers(repository).call(Params());
    result.fold((failure) {
      emit(
          state.copyWith(isLoading: false, failure: failure, developers: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, developers: data));
    });
  }

  FutureOr<void> _developerSelectedEvent(
    DevelopersEventSelected event,
    Emitter<DevelopersState> emit,
  ) {
    List<Developer> developers = state.developers!;
    final int index = event.index;
    developers[index] =
        developers[index].rebuild((builder) => builder..isSelected = true);
    emit(state.copyWith(developers: developers));
  }

  FutureOr<void> _developerUnselectedEvent(
    DevelopersEventUnselected event,
    Emitter<DevelopersState> emit,
  ) {
    List<Developer> developers = state.developers!;
    final int index = event.index;
    developers[index] =
        developers[index].rebuild((builder) => builder..isSelected = false);
    emit(state.copyWith(developers: developers));
  }

  FutureOr<void> _developerUnselectAll(
    DevelopersEventUnselectAll event,
    Emitter<DevelopersState> emit,
  ) {
    final developers = state.developers
        ?.map((e) => e.rebuild((b) => b..isSelected = false))
        .toList();
    emit(state.copyWith(developers: developers));
  }
}
