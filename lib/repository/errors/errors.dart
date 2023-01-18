import 'package:flutter/foundation.dart' show immutable;

@immutable
class ApiException implements Exception {
  final String message;
  const ApiException({
    required this.message,
  });
}

@immutable
class ApiExceptionEmpty extends ApiException {
  const ApiExceptionEmpty({
    required super.message,
  });
}

@immutable
class ApiExceptionError extends ApiException {
  const ApiExceptionError({
    required super.message,
  });
}
