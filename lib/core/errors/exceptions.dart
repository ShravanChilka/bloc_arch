class ServerException implements Exception {
  final String? exception;
  const ServerException({required this.exception});
}

class CacheException implements Exception {}
