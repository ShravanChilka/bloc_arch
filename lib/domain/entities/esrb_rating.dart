// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class EsrbRating extends Equatable {
  final int id;
  final String name;
  final String slug;
  final String? nameEn;
  final String? nameRu;

  const EsrbRating({
    required this.id,
    required this.name,
    required this.slug,
    this.nameEn,
    this.nameRu,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      slug,
      nameEn,
      nameRu,
    ];
  }
}
