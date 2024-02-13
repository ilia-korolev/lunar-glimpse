class InvalidResponseException implements Exception {}

class NasaApodException implements Exception {
  const NasaApodException({
    required this.statusCode,
    required this.message,
  });

  final int statusCode;
  final String message;
}
