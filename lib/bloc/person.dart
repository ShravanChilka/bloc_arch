import 'package:flutter/foundation.dart' show immutable;

@immutable
class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  Person.fromJson(Map<String, dynamic> map)
      : name = map['name'] as String,
        age = map['age'] as int;

  @override
  String toString() {
    return 'Person { name : $name, age : $age }';
  }
}
