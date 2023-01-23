import 'dart:async';
import 'dart:developer';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_genres.dart';
import '../../../../data/models/genre.dart';
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
    on<GenresEventSelected>(_genreSelectedEvent);
    on<GenresEventUnselected>(_genreUnselectedEvent);
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

  FutureOr<void> _genreSelectedEvent(
    GenresEventSelected event,
    Emitter<GenresState> emit,
  ) {
    //emit(state.copyWith(isLoading: true));
    List<Genre> genres = state.genres!;
    final int index = event.index;
    genres[index] =
        genres[index].rebuild((builder) => builder..isSelected = true);
    emit(state.copyWith(genres: genres));
  }

  FutureOr<void> _genreUnselectedEvent(
    GenresEventUnselected event,
    Emitter<GenresState> emit,
  ) {
    //emit(state.copyWith(isLoading: true));
    List<Genre> genres = state.genres!;
    final int index = event.index;
    genres[index] =
        genres[index].rebuild((builder) => builder..isSelected = false);
    emit(state.copyWith(genres: genres));
  }
}
