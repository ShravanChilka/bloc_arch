// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

class Person {
  final String name;
  final 
  const Person(this.name);
}

class PersonModel extends Person {
  const PersonModel(super.name);

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      PersonModel(json['name']);
}

class Teacher {
  String id;
  Teacher(this.id
  );
}

void main(List<String> args) {
  PersonModel person = PersonModel('Shravan');
}
