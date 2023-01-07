/* import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_arch/bloc/actions.dart';
import 'package:bloc_arch/bloc/app_bloc.dart';
import 'package:bloc_arch/bloc/app_state.dart';
import 'package:bloc_arch/api/login_api.dart';
import 'package:bloc_arch/api/notes_api.dart';
import 'package:bloc_arch/models.dart';

const Iterable<Note> mockNotes = [
  Note(title: 'Note 1'),
  Note(title: 'Note 2'),
  Note(title: 'Note 3'),
];

@immutable
class DummyNotesApi implements NotesApiProtocol {
  final LoginHandle acceptedLoginHandle;
  final Iterable<Note>? notesToReturnForAcceptedLoginHandle;

  const DummyNotesApi({
    required this.notesToReturnForAcceptedLoginHandle,
    required this.acceptedLoginHandle,
  });

  const DummyNotesApi.empty()
      : notesToReturnForAcceptedLoginHandle = null,
        acceptedLoginHandle = const LoginHandle.shravan();

  @override
  Future<Iterable<Note>?> getNotes({required LoginHandle loginHandle}) async {
    if (loginHandle == acceptedLoginHandle) {
      return notesToReturnForAcceptedLoginHandle;
    } else {
      null;
    }
  }
}

void main() {}
 */