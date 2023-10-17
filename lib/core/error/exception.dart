class ServerException implements Exception {
  final String error;

  ServerException({required this.error});
}

class CacheException implements Exception {}