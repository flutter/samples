sealed class Response<T> {
  const Response();
  factory Response.ok(T value) => Ok(value);
  factory Response.error(Exception error) => Error(error);
}

final class Ok<T> extends Response<T> {
  const Ok(this.value);
  final T value;
}

final class Error<T> extends Response<T> {
  const Error(this.error);
  final Exception error;
}