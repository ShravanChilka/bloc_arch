import 'dart:async';
import 'package:bloc_arch/core/usecases/usecase.dart';
import 'package:bloc_arch/domain/repository/games_repository.dart';
import 'package:bloc_arch/domain/usecases/get_all_publishers.dart';
import '../../../../data/models/publisher.dart';
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
    on<PublishersEventSelected>(_publisherSelectedEvent);
    on<PublishersEventUnselected>(_publisherUnselectedEvent);
    on<PublishersEventUnselectAll>(_publisherUnselectAll);
  }

  FutureOr<void> _getAllPublishersEvent(
    PublishersEventGetAll event,
    Emitter<PublishersState> emit,
  ) async {
    //* get all publishers event
    emit(state.copyWith(isLoading: true));
    final result = await GetAllPublishers(repository).call(Params());
    result.fold((failure) {
      emit(
          state.copyWith(isLoading: false, failure: failure, publishers: null));
    }, (data) {
      emit(state.copyWith(isLoading: false, failure: null, publishers: data));
    });
  }

  FutureOr<void> _publisherSelectedEvent(
    PublishersEventSelected event,
    Emitter<PublishersState> emit,
  ) {
    List<Publisher> publishers = state.publishers!;
    final int index = event.index;
    publishers[index] =
        publishers[index].rebuild((builder) => builder..isSelected = true);
    emit(state.copyWith(publishers: publishers));
  }

  FutureOr<void> _publisherUnselectedEvent(
    PublishersEventUnselected event,
    Emitter<PublishersState> emit,
  ) {
    List<Publisher> publishers = state.publishers!;
    final int index = event.index;
    publishers[index] =
        publishers[index].rebuild((builder) => builder..isSelected = false);
    emit(state.copyWith(publishers: publishers));
  }

  FutureOr<void> _publisherUnselectAll(
    PublishersEventUnselectAll event,
    Emitter<PublishersState> emit,
  ) {
    final publishers = state.publishers
        ?.map((e) => e.rebuild((b) => b..isSelected = false))
        .toList();
    emit(state.copyWith(publishers: publishers));
  }
}
