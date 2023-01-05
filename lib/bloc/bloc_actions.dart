import 'package:bloc_arch/bloc/person.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class LoadAction {
  const LoadAction();
}

@immutable
class LoadPersonsAction implements LoadAction {
  final String url;
  final PersonsLoader loader;
  const LoadPersonsAction({required this.loader, required this.url});
}

typedef PersonsLoader = Future<Iterable<Person>> Function(String url);

const persons1Url = 'http://127.0.0.1:5500/api/person_1.json';
const persons2Url = 'http://127.0.0.1:5500/api/person_2.json';
