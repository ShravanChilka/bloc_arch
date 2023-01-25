import 'dart:async';
import 'dart:developer';
import 'package:bloc_arch/core/usecases/usecase.dart';
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
    emit(state.copyWith(isLoading: true));
    Map<String, String> parameters = {};
    parameters.addAll(getParamters(Type.genre, event.genres) ?? {});
    parameters.addAll(getParamters(Type.creator, event.creators) ?? {});
    parameters.addAll(getParamters(Type.publisher, event.publishers) ?? {});
    parameters.addAll(getParamters(Type.developer, event.developers) ?? {});
    parameters.addAll(getParamters(Type.platform, event.platforms) ?? {});
    parameters
        .addAll(getParamters(Type.parentPlatform, event.parentPlatforms) ?? {});
    parameters.addAll(getParamters(Type.store, event.stores) ?? {});
    parameters.addAll(getParamters(Type.tag, event.tags) ?? {});
    log(parameters.toString());
    final result =
        await GetAllGames(repository).call(Params(parameters: parameters));
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, games: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, games: data));
    });
  }
}

enum Type {
  genre,
  creator,
  publisher,
  developer,
  platform,
  parentPlatform,
  store,
  tag,
}

Map<String, String>? getParamters(Type type, List<dynamic>? list) {
  switch (type) {
    case Type.genre:
      List<Genre> selected = [];
      for (Genre item in (list as List<Genre>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'genres': parameters};
      }
      return null;
    case Type.creator:
      List<Creator> selected = [];
      for (Creator item in (list as List<Creator>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'creators': parameters};
      }
      return null;
    case Type.publisher:
      List<Publisher> selected = [];
      for (Publisher item in (list as List<Publisher>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'publishers': parameters};
      }
      return null;
    case Type.developer:
      List<Developer> selected = [];
      for (Developer item in (list as List<Developer>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'developers': parameters};
      }
      return null;
    case Type.platform:
      List<Platform> selected = [];
      for (Platform item in (list as List<Platform>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'platforms': parameters};
      }
      return null;
    case Type.parentPlatform:
      List<Platform> selected = [];
      for (Platform item in (list as List<Platform>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'parent_platforms': parameters};
      }
      return null;
    case Type.store:
      List<Store> selected = [];
      for (Store item in (list as List<Store>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'stores': parameters};
      }
      return null;
    case Type.tag:
      List<Tag> selected = [];
      for (Tag item in (list as List<Tag>?) ?? []) {
        if (item.isSelected) {
          selected.add(item);
        }
      }
      if (selected.isNotEmpty) {
        final parameters = selected
            .map((e) => e.id)
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '');
        return {'tags': parameters};
      }
      return null;
  }
}
