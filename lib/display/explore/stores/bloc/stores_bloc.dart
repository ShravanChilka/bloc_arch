import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_stores.dart';
import '../../../../data/models/store.dart';
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
    on<StoresEventSelected>(_storeSelectedEvent);
    on<StoresEventUnselected>(_storeUnselectedEvent);
    on<StoresEventUnselectAll>(_storeUnselectAll);
  }

  FutureOr<void> _getAllStoresEvent(
    StoresEventGetAll event,
    Emitter<StoresState> emit,
  ) async {
    //* get all stores event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllStores(repository).call(Params());
    result.fold((failure) {
      emit(state.copyWith(isLoading: false, failure: failure, stores: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, stores: data));
    });
  }

  FutureOr<void> _storeSelectedEvent(
    StoresEventSelected event,
    Emitter<StoresState> emit,
  ) {
    List<Store> stores = state.stores!;
    final int index = event.index;
    stores[index] =
        stores[index].rebuild((builder) => builder..isSelected = true);
    emit(state.copyWith(stores: stores));
  }

  FutureOr<void> _storeUnselectedEvent(
    StoresEventUnselected event,
    Emitter<StoresState> emit,
  ) {
    List<Store> stores = state.stores!;
    final int index = event.index;
    stores[index] =
        stores[index].rebuild((builder) => builder..isSelected = false);
    emit(state.copyWith(stores: stores));
  }

  FutureOr<void> _storeUnselectAll(
    StoresEventUnselectAll event,
    Emitter<StoresState> emit,
  ) {
    final stores = state.stores
        ?.map((e) => e.rebuild((b) => b..isSelected = false))
        .toList();
    emit(state.copyWith(stores: stores));
  }
}
