import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_developers.dart';
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
  }

  FutureOr<void> _getAllDevelopersEvent(
    DevelopersEventGetAll event,
    Emitter<DevelopersState> emit,
  ) async {
    //* get all genres event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllDevelopers(repository).call(Params());
    result.fold((failure) {
      emit(
          state.copyWith(isLoading: false, failure: failure, developers: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, developers: data));
    });
  }
}
