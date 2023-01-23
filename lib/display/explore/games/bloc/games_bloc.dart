import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/data/models/creator.dart';
import 'package:bloc_arch/data/models/genre.dart';
import 'package:bloc_arch/data/models/models_export.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_games.dart';
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
    on<GamesEventSearch>(_searchGamesEvent);
    on<GamesEventGenreSelected>(_genreSelectedEvent);
    on<GamesEventTagSelected>(_tagSelectedEvent);
    on<GamesEventParentPlatformSelected>(_parentPlatformSelectedEvent);
    on<GamesEventFilter>(_filterEvent);
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

  FutureOr<void> _genreSelectedEvent(
    GamesEventGenreSelected event,
    Emitter<GamesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await GetAllGames(repository)
        .call(Params(parameters: {'genres': event.genre.id.toString()}));
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, games: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, games: data));
    });
  }

  FutureOr<void> _tagSelectedEvent(
    GamesEventTagSelected event,
    Emitter<GamesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await GetAllGames(repository)
        .call(Params(parameters: {'tags': event.tag.id.toString()}));
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, games: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, games: data));
    });
  }

  FutureOr<void> _parentPlatformSelectedEvent(
    GamesEventParentPlatformSelected event,
    Emitter<GamesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await GetAllGames(repository).call(
        Params(parameters: {'parent_platforms': event.platform.id.toString()}));
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, games: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, games: data));
    });
  }

  FutureOr<void> _filterEvent(
    GamesEventFilter event,
    Emitter<GamesState> emit,
  ) async {
    final List<Genre>? genres = event.genres;
    final List<Creator>? creators = event.creators;
    final List<Publisher>? publishers = event.publishers;
    final List<Developer>? developers = event.developers;
    final List<Platform>? platforms = event.platforms;
    final List<Platform>? parentPlatforms = event.parentPlatforms;
    final List<Store>? stores = event.stores;
    final List<Tag>? tags = event.tags;
    final String? genreParameters = genres != null
        ? (genres.map((e) => e.id).toList())
            .toString()
            .replaceAll('[', '')
            .replaceAll(']', '')
        : null;
    final String? creatorsParameters = creators != null
        ? (creators.map((e) => e.id).toList())
            .toString()
            .replaceAll('[', '')
            .replaceAll(']', '')
        : null;
    final String? publishersParameters = publishers != null
        ? (publishers.map((e) => e.id).toList())
            .toString()
            .replaceAll('[', '')
            .replaceAll(']', '')
        : null;
  }
}

extension Paramter<T> on List<T>? {
  Map<String, String>? get parmaters {
    final list = this;
    final cls = T;
    if (cls is Genre) {
      if (list != null) {
        final parameters = (list as List<Genre>)
            .map((e) => e.id)
            .toString()
            .replaceAll('[', '')
            .replaceAll(']', '');
        return {'genre': parameters};
      }
    }
    return null;
  }
}
