import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_platforms.dart';
import 'platforms_state.dart';
import 'platforms_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlatformsBloc extends Bloc<PlatformsEvent, PlatformsState> {
  final GamesRepository repository;
  PlatformsBloc({required this.repository})
      : super(
          const PlatformsState(
            isLoading: false,
            failure: null,
            platforms: null,
          ),
        ) {
    on<PlatformsEventGetAll>(_getAllPlatformsEvent);
  }

  FutureOr<void> _getAllPlatformsEvent(
    PlatformsEventGetAll event,
    Emitter<PlatformsState> emit,
  ) async {
    //* get all genres event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllPlatforms(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, platforms: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, platforms: data));
    });
  }
}
