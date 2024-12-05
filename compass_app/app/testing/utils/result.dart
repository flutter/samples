import 'package:compass_app/utils/result.dart';

extension ResultCast<T> on Result<T> {
  /// Convenience method to cast to Ok
  Ok<T> get asOk => this as Ok<T>;

  /// Convenience method to cast to Error
  Error get asError => this as Error<T>;
}
