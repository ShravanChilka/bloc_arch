abstract class Failure {
  final String? errorMessage;
  Failure({this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
}

class CacheFailure extends Failure {
  CacheFailure({required super.errorMessage});
}

class NetworkFailure extends Failure {
  NetworkFailure() : super(errorMessage: 'No Internet Connection!');
}
