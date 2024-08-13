import 'package:compass_app/data/repositories/auth/auth_token_repository.dart';
import 'package:compass_app/utils/result.dart';

class FakeAuthTokenRepository extends AuthTokenRepository {
  String? token = null;

  @override
  Future<Result<String?>> getToken() async {
    return Result.ok(token);
  }

  @override
  Future<Result<void>> saveToken(String? token) async {
    this.token = token;
    notifyListeners();
    return Result.ok(null);
  }
}
