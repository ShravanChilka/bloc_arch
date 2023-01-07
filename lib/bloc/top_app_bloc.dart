import 'package:bloc_arch/bloc/app_bloc.dart';

class TopAppBloc extends AppBloc {
  TopAppBloc({
    required super.allUrls,
    super.urlPicker,
    required super.waitBeforeLoading,
  });
}
