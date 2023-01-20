import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_stores.dart';
import 'stores_state.dart';
import 'stores_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoresBloc extends Bloc<StoresEvent, StoresState> {
  final GamesRepository repository;
  StoresBloc({required this.repository})
      : super(
          const StoresState(
            isLoading: false,
            failure: null,
            stores: null,
          ),
        ) {
    on<StoresEventGetAll>(_getAllStoresEvent);
  }

  FutureOr<void> _getAllStoresEvent(
    StoresEventGetAll event,
    Emitter<StoresState> emit,
  ) async {
    //* get all genres event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllStores(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, stores: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, stores: data));
    });
  }
}
