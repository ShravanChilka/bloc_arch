import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException;
import 'package:flutter/foundation.dart' show immutable;

const Map<String, AuthError> authErrorMapping = {
  'auth/invalid-email': AuthErrorInvalidEmail(),
};

@immutable
abstract class AuthError {
  final String dialogTitle;
  final String dialogContent;

  const AuthError({
    required this.dialogTitle,
    required this.dialogContent,
  });

  factory AuthError.fromFirabaseAuth(FirebaseAuthException exception) =>
      AuthErrorDetails(
          dialogTitle: exception.code,
          dialogContent: exception.message ?? 'Unknown Error');
  /* authErrorMapping[exception.code.toLowerCase().trim()] ??
      const AuthErrorUnknown(); */
}

@immutable
class AuthErrorDetails extends AuthError {
  const AuthErrorDetails({
    required super.dialogTitle,
    required super.dialogContent,
  });
}

@immutable
class AuthErrorUnknown extends AuthError {
  const AuthErrorUnknown({
    super.dialogTitle = 'Authentication Error',
    super.dialogContent = 'Unknown authentication error',
  });
}

@immutable
class AuthErrorNoCurrentUser extends AuthError {
  const AuthErrorNoCurrentUser({
    super.dialogTitle = 'No current user',
    super.dialogContent = 'No current user with this information was found',
  });
}

@immutable
class AuthErrorRequiresRecentLogin extends AuthError {
  const AuthErrorRequiresRecentLogin({
    super.dialogTitle = 'Required recent login',
    super.dialogContent =
        'You need to log out and log back in again in order to perform this action',
  });
}

@immutable
class AuthErrorOperationNotAllowed extends AuthError {
  const AuthErrorOperationNotAllowed({
    super.dialogTitle = 'Operation not allowed',
    super.dialogContent =
        'You cannot register using this method at this moment',
  });
}

@immutable
class AuthErrorUserNotFound extends AuthError {
  const AuthErrorUserNotFound({
    super.dialogTitle = 'User not found!',
    super.dialogContent = 'The given user was not found on the server',
  });
}

@immutable
class AuthErrorWeakPassword extends AuthError {
  const AuthErrorWeakPassword({
    super.dialogTitle = 'Weak Password',
    super.dialogContent =
        'Please choose a stronger password consisting of more characters',
  });
}

@immutable
class AuthErrorInvalidEmail extends AuthError {
  const AuthErrorInvalidEmail({
    super.dialogTitle = 'Invalid email',
    super.dialogContent = 'Please double check your email and try again',
  });
}
