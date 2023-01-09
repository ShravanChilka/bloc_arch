import 'package:bloc_arch/auth/auth_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AppState {
  final bool isLoading;
  final AuthError? authError;

  const AppState({
    required this.isLoading,
    this.authError,
  });
}

@immutable
class AppStateLoggedIn extends AppState {
  final User user;
  final Iterable<Reference> images;

  const AppStateLoggedIn({
    required this.images,
    required this.user,
    required super.isLoading,
    required super.authError,
  });

  @override
  bool operator ==(other) {
    final otherClass = other;
    if (otherClass is AppStateLoggedIn) {
      return otherClass.isLoading == isLoading &&
          otherClass.user.uid == user.uid &&
          otherClass.images.length == images.length;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(user.uid, images);

  @override
  String toString() => 'AppStateLoggedIn{imagesLength : ${images.length}}';
}

@immutable
class AppStateLoggedOut extends AppState {
  const AppStateLoggedOut({
    required super.isLoading,
    super.authError,
  });
  @override
  String toString() =>
      'AppStateLoggedOut{isLoading = $isLoading, authError : $authError}';
}

@immutable
class AppStateIsInRegistrationView extends AppState {
  const AppStateIsInRegistrationView({
    required super.isLoading,
    required super.authError,
  });
}

@immutable
class AppStateIsInLogInView extends AppState {
  const AppStateIsInLogInView({
    required super.isLoading,
    required super.authError,
  });
}

extension GetUser on AppState {
  User? get user {
    final cls = this;
    if (cls is AppStateLoggedIn) {
      return cls.user;
    }
    return null;
  }
}

extension GetImages on AppState {
  Iterable<Reference>? get images {
    final cls = this;
    if (cls is AppStateLoggedIn) {
      return cls.images;
    }
    return null;
  }
}
