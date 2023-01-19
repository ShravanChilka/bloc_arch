import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_games.dart';
import 'package:bloc_arch/domain/usecases/get_all_genres.dart';
import 'all_games_event.dart';
import 'all_games_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllGamesBloc extends Bloc<AllGamesEvent, AllGamesState> {
  final GamesRepository repository;
  AllGamesBloc({required this.repository})
      : super(
          const AllGamesState(
            isLoading: false,
            failure: null,
            games: null,
            genres: null,
            tags: null,
          ),
        ) {
    on<AllGamesEventGetAllGames>(_getAllGamesEvent);
    on<AllGamesEventGetAllGenres>(_getAllGenres);
    on<AllGamesEventSearch>(_searchGamesEvent);
    on<AllGamesEventGenre>(_genreGamesEvent);
  }

  FutureOr<void> _getAllGamesEvent(
    AllGamesEventGetAllGames event,
    Emitter<AllGamesState> emit,
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
    AllGamesEventSearch event,
    Emitter<AllGamesState> emit,
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
    AllGamesEventGetAllGenres event,
    Emitter<AllGamesState> emit,
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
    AllGamesEventGenre event,
    Emitter<AllGamesState> emit,
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
