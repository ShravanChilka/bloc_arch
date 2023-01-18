// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import '../../utils/contants.dart' as constants;

class NoParams extends Equatable {
  final String apiKey;
  const NoParams({
    this.apiKey = constants.apiKey,
  });
  @override
  List<Object?> get props => [apiKey];
}

class GameById extends Equatable {
  final String apiKey;
  final int id;
  const GameById({
    this.apiKey = constants.apiKey,
    required this.id,
  });

  @override
  List<Object?> get props => [apiKey, id];
}
