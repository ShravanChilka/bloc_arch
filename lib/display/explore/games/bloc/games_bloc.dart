import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_games.dart';
import 'package:bloc_arch/domain/usecases/get_all_genres.dart';
import 'games_event.dart';
import 'games_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamesBloc extends Bloc<GamesEvent, GamesState> {
  final GamesRepository repository;
  GamesBloc({required this.repository})
      : super(
          const GamesState(
            isLoading: false,
            failure: null,
            games: null,
            genres: null,
            tags: null,
          ),
        ) {
    on<GamesEventGetAllGames>(_getGamesEvent);
    on<GamesEventGetAllGenres>(_getAllGenres);
    on<GamesEventSearch>(_searchGamesEvent);
    on<GamesEventGenre>(_genreGamesEvent);
  }

  FutureOr<void> _getGamesEvent(
    GamesEventGetAllGames event,
    Emitter<GamesState> emit,
  ) async {
    //* get all games event
    emit(state.copyWith(isLoading: true));
    final response = await GetAllGames(repository).call(Params());
    response.fold((failure) {
      emit(
        state.copyWith(isLoading: false, failure: failure, games: null),
      );
    }, (data) {
      emit(
        state.copyWith(isLoading: false, failure: null, games: data),
      );
    });
  }

  FutureOr<void> _searchGamesEvent(
    GamesEventSearch event,
    Emitter<GamesState> emit,
  ) async {
    //* search event
    emit(state.copyWith(isLoading: true));
    final search = event.search;
    final result = await GetAllGames(repository).call(Params(
      parameters: {'search': search},
    ));
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, games: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, games: data));
    });
  }

  FutureOr<void> _getAllGenres(
    GamesEventGetAllGenres event,
    Emitter<GamesState> emit,
  ) async {
    //* search event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllGenres(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, games: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, genres: data));
    });
  }

  FutureOr<void> _genreGamesEvent(
    GamesEventGenre event,
    Emitter<GamesState> emit,
  ) async {
    //* search event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllGames(repository)
        .call(Params(parameters: {'genres': event.id.toString()}));
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, games: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, games: data));
    });
  }
}
