///will help to have generic error response for all requests
class BaseError<T> {
  final T? data;
  final String message;

  BaseError({
    required this.message,
    this.data,
  });
}
