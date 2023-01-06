import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_arch/bloc/persons_bloc.dart';
import 'package:bloc_arch/bloc/person.dart';
import 'package:bloc_arch/bloc/bloc_actions.dart';

const mockedPersons1 = [
  Person(name: 'Shravan', age: 20),
  Person(name: 'Ashwin', age: 30),
];

const mockedPersons2 = [
  Person(name: 'Shravan', age: 20),
  Person(name: 'Ashwin', age: 30),
];

Future<Iterable<Person>> mockedGetPersons1(String _) =>
    Future.value(mockedPersons1);

Future<Iterable<Person>> mockedGetPersons2(String _) =>
    Future.value(mockedPersons2);

void main() {
  group('Testing bloc', () {
    // write your tests
    late PersonsBloc bloc;
    setUp(() {
      // setup initializes the variables once per test
      bloc = PersonsBloc();
    });

    blocTest<PersonsBloc, FetchResult?>(
      'Test initial stage',
      build: () => bloc,
      verify: (bloc) => expect(bloc, null),
    );

    // fetch mock data persons 1 and compared it with the FetchResult
    blocTest<PersonsBloc, FetchResult?>(
      'Mock retrieving persons from first iterable',
      build: () => bloc,
      act: (bloc) {
        bloc.add(
          const LoadPersonsAction(
            loader: mockedGetPersons1,
            url: 'dummy_url_1',
          ),
        );
        bloc.add(
          const LoadPersonsAction(
            loader: mockedGetPersons1,
            url: 'dummy_url_1',
          ),
        );
      },
      expect: () => [
        const FetchResult(
          persons: mockedPersons1,
          isRetrievedFromCache: false,
        ),
        const FetchResult(
          persons: mockedPersons1,
          isRetrievedFromCache: true,
        ),
      ],
    );

    // fetch mock data persons 2 and compared it with the FetchResult

    blocTest<PersonsBloc, FetchResult?>(
      'Mock retrieving persons from second iterable',
      build: () => bloc,
      act: (bloc) {
        bloc.add(
          const LoadPersonsAction(
            loader: mockedGetPersons2,
            url: 'dummy_url_2',
          ),
        );
        bloc.add(
          const LoadPersonsAction(
            loader: mockedGetPersons2,
            url: 'dummy_url_2',
          ),
        );
      },
      expect: () => [
        const FetchResult(
          persons: mockedPersons2,
          isRetrievedFromCache: false,
        ),
        const FetchResult(
          persons: mockedPersons2,
          isRetrievedFromCache: true,
        ),
      ],
    );
  });
}
