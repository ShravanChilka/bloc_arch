import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_creators.dart';
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
  }

  FutureOr<void> _getAllCreatorsEvent(
    CreatorsEventGetAll event,
    Emitter<CreatorsState> emit,
  ) async {
    //* get all genres event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllCreators(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, creators: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, creators: data));
    });
  }
}
