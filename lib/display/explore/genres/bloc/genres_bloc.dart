import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_genres.dart';
import 'genres_state.dart';
import 'genres_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  final GamesRepository repository;
  GenresBloc({required this.repository})
      : super(
          const GenresState(
            isLoading: false,
            failure: null,
            genres: null,
          ),
        ) {
    on<GenresEventGetAll>(_getAllGenresEvent);
  }

  FutureOr<void> _getAllGenresEvent(
    GenresEventGetAll event,
    Emitter<GenresState> emit,
  ) async {
    //* get all genres event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllGenres(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, genres: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, genres: data));
    });
  }
}
