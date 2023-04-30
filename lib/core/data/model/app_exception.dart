class AppException<E> implements Exception {
  final String? title;
  final String? description;
  final E? exception;
  final dynamic data;

  AppException({
    this.title,
    this.exception,
    this.data,
    this.description,
  });

  @override
  String toString() => title ?? '';
}
