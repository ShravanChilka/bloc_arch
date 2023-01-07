import 'package:flutter/foundation.dart' show immutable;

import '../models.dart';

@immutable
abstract class NotesApiProtocol {
  const NotesApiProtocol();

  Future<Iterable<Note>?> getNotes({required LoginHandle loginHandle});
}

@immutable
class NotesApi implements NotesApiProtocol {
  // singleton instance
  // const NotesApi._sharedInstance();
  // static const NotesApi _shared = NotesApi._sharedInstance();
  // factory NotesApi() => _shared;

  @override
  Future<Iterable<Note>?> getNotes({required LoginHandle loginHandle}) =>
      Future.delayed(const Duration(seconds: 2),
          () => loginHandle == const LoginHandle.shravan() ? mockNotes : null);
}
