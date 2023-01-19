import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_games.dart';
import 'package:bloc_arch/domain/usecases/get_all_genres.dart';
import 'explore_games_event.dart';
import 'explore_games_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreGamesBloc extends Bloc<ExploreGamesEvent, ExploreGamesState> {
  final GamesRepository repository;
  ExploreGamesBloc({required this.repository})
      : super(
          const ExploreGamesState(
            isLoading: false,
            failure: null,
            games: null,
            genres: null,
            tags: null,
          ),
        ) {
    on<ExploreGamesEventGetAllGames>(_getAllGamesEvent);
    on<ExploreGamesEventGetAllGenres>(_getAllGenres);
    on<ExploreGamesEventSearch>(_searchGamesEvent);
    on<ExploreGamesEventGenre>(_genreGamesEvent);
  }

  FutureOr<void> _getAllGamesEvent(
    ExploreGamesEventGetAllGames event,
    Emitter<ExploreGamesState> emit,
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
    ExploreGamesEventSearch event,
    Emitter<ExploreGamesState> emit,
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
    ExploreGamesEventGetAllGenres event,
    Emitter<ExploreGamesState> emit,
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
    ExploreGamesEventGenre event,
    Emitter<ExploreGamesState> emit,
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
