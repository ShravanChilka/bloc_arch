import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_publishers.dart';
import 'publishers_state.dart';
import 'publishers_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishersBloc extends Bloc<PublishersEvent, PublishersState> {
  final GamesRepository repository;
  PublishersBloc({required this.repository})
      : super(
          const PublishersState(
            isLoading: false,
            failure: null,
            publishers: null,
          ),
        ) {
    on<PublishersEventGetAll>(_getAllPublishersEvent);
  }

  FutureOr<void> _getAllPublishersEvent(
    PublishersEventGetAll event,
    Emitter<PublishersState> emit,
  ) async {
    //* get all genres event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllPublishers(repository).call(Params());
    result.fold((failure) {
      emit(
          state.copyWith(isLoading: false, failure: failure, publishers: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, publishers: data));
    });
  }
}
