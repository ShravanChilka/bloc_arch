import 'package:flutter/foundation.dart' show immutable;

@immutable
class LoginHandle {
  final String token;

  const LoginHandle({required this.token});

  const LoginHandle.shravan() : token = 'shravan';

  @override
  bool operator ==(covariant LoginHandle other) => token == other.token;

  @override
  int get hashCode => token.hashCode;

  @override
  String toString() {
    return 'LoginHandle { token : $token }';
  }
}

enum LoginErrors {
  invalidHandle,
}

@immutable
class Note {
  final String title;

  const Note({required this.title});

  @override
  String toString() {
    return 'Note { title : $title }';
  }
}

final mockNotes = Iterable.generate(
  3,
  (index) => Note(title: 'Note ${index + 1}'),
);
