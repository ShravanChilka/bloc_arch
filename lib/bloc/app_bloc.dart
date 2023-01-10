import 'dart:io';
import 'package:bloc_arch/auth/auth_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_event.dart';
import 'app_state.dart';
import '../utils/upload_image.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppStateLoggedOut(isLoading: false)) {
    //* go to login screen
    on<AppEventGoToLogIn>(
        (event, emit) => emit(const AppStateLoggedOut(isLoading: false)));

    //* go to registration screen
    on<AppEventGoToLogIn>((event, emit) =>
        emit(const AppStateIsInRegistrationView(isLoading: false)));

    //* login event
    on<AppEventLogIn>((event, emit) async {
      emit(const AppStateLoggedOut(isLoading: true));
      final email = event.email;
      final password = event.password;
      try {
        final credentials = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        final user = credentials.user!;
        final images = await _getImages(user.uid);
        emit(AppStateLoggedIn(
          images: images,
          user: user,
          isLoading: false,
        ));
      } on FirebaseAuthException catch (e) {
        emit(AppStateLoggedOut(
          isLoading: false,
          authError: AuthError.fromFirabaseAuth(e),
        ));
      }
    });

    //* register event
    on<AppEventRegister>((event, emit) async {
      emit(const AppStateIsInRegistrationView(isLoading: true));
      final email = event.email;
      final password = event.password;
      try {
        final credentials = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        emit(AppStateLoggedIn(
          images: const [],
          user: credentials.user!,
          isLoading: false,
        ));
      } on FirebaseAuthException catch (e) {
        emit(AppStateIsInRegistrationView(
          isLoading: false,
          authError: AuthError.fromFirabaseAuth(e),
        ));
      }
    });

    //* initialize application at start
    on<AppEventInitialize>((event, emit) async {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        // no user found
        emit(const AppStateLoggedOut(isLoading: false));
        return;
      }
      final images = await _getImages(user.uid);
      emit(AppStateLoggedIn(
        images: images,
        user: user,
        isLoading: false,
      ));
    });

    //* handle log out event
    on<AppEventLogOut>((event, emit) async {
      emit(const AppStateLoggedOut(isLoading: true));
      // log out user
      await FirebaseAuth.instance.signOut();
      emit(const AppStateLoggedOut(isLoading: false));
    });

    //* handle account delete event
    on<AppEventDeleteAccount>((event, emit) async {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        // no user found
        emit(const AppStateLoggedOut(isLoading: false));
        return;
      }
      emit(AppStateLoggedIn(
        images: state.images ?? [],
        user: user,
        isLoading: true,
      ));
      // delete user
      try {
        // deleting user's folder of images
        final folderContents =
            await FirebaseStorage.instance.ref(user.uid).listAll();
        for (final item in folderContents.items) {
          await item.delete().catchError((_) {});
        }
        // deleting folder itself
        await FirebaseStorage.instance
            .ref(user.uid)
            .delete()
            .catchError((_) {});
        // delete user
        await user.delete();
        // log out user
        await FirebaseAuth.instance.signOut();
        emit(const AppStateLoggedOut(isLoading: false));
      } on FirebaseAuthException catch (e) {
        emit(AppStateLoggedIn(
          images: state.images ?? [],
          user: user,
          isLoading: false,
          authError: AuthError.fromFirabaseAuth(e),
        ));
      } on FirebaseException catch (e) {
        emit(AppStateLoggedIn(
          images: state.images ?? [],
          user: user,
          isLoading: false,
          authError: AuthError.fromFirabase(e),
        ));
      }
    });

    //* handle upload images event
    on<AppEventUploadImage>((event, emit) async {
      final user = state.user;
      if (user == null) {
        // log user out if he does not have user id
        emit(const AppStateLoggedOut(isLoading: false));
        return;
      }
      emit(AppStateLoggedIn(
        isLoading: true,
        images: state.images ?? [],
        user: user,
      ));
      final file = File(event.filePathToUpload);
      // upload image
      await uploadImage(file: file, userId: user.uid);
      // get latest images
      final images = await _getImages(user.uid);
      emit(AppStateLoggedIn(
        images: images,
        user: user,
        isLoading: false,
      ));
    });
  }

  Future<Iterable<Reference>> _getImages(String userId) =>
      FirebaseStorage.instance
          .ref(userId)
          .list()
          .then((listResult) => listResult.items);
}
