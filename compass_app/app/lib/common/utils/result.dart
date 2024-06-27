sealed class Result<T> {
  const Result();
  factory Result.ok(T value) => Ok(value);
  factory Result.error(Exception error) => Error(error);
  Ok<T> get asOk => this as Ok<T>;
  Error get asError => this as Error<T>;
}

final class Ok<T> extends Result<T> {
  const Ok(this.value);
  final T value;

  @override
  String toString() => 'Result<$T>.ok($value)';
}

final class Error<T> extends Result<T> {
  const Error(this.error);
  final Exception error;

  @override
  String toString() => 'Result<$T>.error($error)';
}