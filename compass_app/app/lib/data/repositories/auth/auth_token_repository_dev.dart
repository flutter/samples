import '../../../utils/result.dart';
import 'auth_token_repository.dart';

/// Development [AuthTokenRepository] that always returns a fake token
class AuthTokenRepositoryDev extends AuthTokenRepository {
  @override
  Future<Result<String?>> fetchToken({bool notify = false}) async {
    return Result.ok('token');
  }

  @override
  Future<Result<void>> saveToken(String? token) async {
    notifyListeners();
    return Result.ok(null);
  }

  @override
  bool get isAuthenticated => true;

  @override
  String? get token => 'token';
}
