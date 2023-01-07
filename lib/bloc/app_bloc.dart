import 'package:bloc/bloc.dart';
import 'package:bloc_arch/api/login_api.dart';
import 'package:bloc_arch/api/notes_api.dart';
import 'package:bloc_arch/bloc/actions.dart';
import 'package:bloc_arch/bloc/app_state.dart';
import '../models.dart';

class AppBloc extends Bloc<AppAction, AppState> {
  final LoginApiProtocol loginApi;
  final NotesApiProtocol notesApi;

  AppBloc({required this.loginApi, required this.notesApi})
      : super(const AppState.empty()) {
    on<LoginAction>((event, emit) async {
      // start loading
      emit(const AppState(
        isLoading: true,
        loginError: null,
        loginHandle: null,
        fetchedNotes: null,
      ));
      await loginApi.login(email: event.email, password: event.password).then(
            (LoginHandle? loginHandle) => emit(
              AppState(
                isLoading: false,
                loginError:
                    loginHandle == null ? LoginErrors.invalidHandle : null,
                loginHandle: loginHandle,
                fetchedNotes: null,
              ),
            ),
          );

      on<LoadNotesAction>((event, emit) async {
        // start loading
        emit(AppState(
          isLoading: true,
          loginError: null,
          loginHandle: state.loginHandle,
          fetchedNotes: null,
        ));
      });
      final loginHandle = state.loginHandle;
      if (loginHandle != const LoginHandle.shravan()) {
        // invalid login handle, not loading notes
        emit(AppState(
          isLoading: false,
          loginError: LoginErrors.invalidHandle,
          loginHandle: loginHandle,
          fetchedNotes: null,
        ));
      } else {
        // valid login handle, loading notes
        final notes = await notesApi.getNotes(loginHandle: loginHandle!);

        emit(AppState(
          isLoading: false,
          loginError: null,
          loginHandle: loginHandle,
          fetchedNotes: notes,
        ));
      }
    });
  }
}
