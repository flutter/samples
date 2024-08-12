import '../../../utils/result.dart';

/// Repository to save and get auth token
abstract class AuthTokenRepository {
  /// Store the token
  Future<Result<void>> saveToken(String? token);

  /// Load the token
  Future<Result<String?>> getToken();
}
