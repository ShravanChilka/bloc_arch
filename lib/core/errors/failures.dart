abstract class Failure {
  final String? errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({super.errorMessage});
}

class CacheFailure extends Failure {
  CacheFailure({super.errorMessage});
}

class NetworkFailure extends Failure {
  NetworkFailure() : super(errorMessage: 'No Internet Connection!');
}
