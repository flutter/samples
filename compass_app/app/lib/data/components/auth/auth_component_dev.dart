import '../../../utils/result.dart';
import 'auth_component.dart';

class AuthComponentDev implements AuthComponent {
  @override
  Future<String?> authToken() async {
    return "fake token";
  }

  @override
  Future<bool> isSignedIn() async {
    return true;
  }

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    return Result.ok(null);
  }

  @override
  Future<void> logout() async {
    // nothing
  }
}
