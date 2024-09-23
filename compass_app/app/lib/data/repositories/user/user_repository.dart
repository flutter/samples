import '../../../domain/models/user/user.dart';
import '../../../utils/result.dart';

/// Data source for user related data
abstract class UserRepository {
  /// Get current user
  Future<Result<User>> getUser();
}
