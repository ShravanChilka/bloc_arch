// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Store extends Equatable {
  final int id;
  final String name;
  final String slug;
  final String? domain;
  final int? gamesCount;
  final String? imageBackground;
  final String? description;

  const Store({
    required this.id,
    required this.name,
    required this.slug,
    this.domain,
    this.gamesCount,
    this.imageBackground,
    this.description,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      slug,
      domain,
      gamesCount,
      imageBackground,
      description,
    ];
  }
}
