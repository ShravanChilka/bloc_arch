import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class ShortScreenshot extends Equatable {
  final int id;
  final String image;

  const ShortScreenshot({
    required this.id,
    required this.image,
  });

  @override
  List<Object> get props => [id, image];
}
