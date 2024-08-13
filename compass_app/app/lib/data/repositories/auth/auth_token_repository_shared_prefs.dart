import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/result.dart';
import 'auth_token_repository.dart';

/// [AuthTokenRepository] that stores the token in Shared Preferences.
class AuthTokenRepositorySharedPrefs extends AuthTokenRepository {
  static const _tokenKey = 'TOKEN';
  String? cachedToken;

  @override
  Future<Result<String?>> getToken() async {
    if (cachedToken != null) return Result.ok(cachedToken);

    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final token = sharedPreferences.getString(_tokenKey);
      return Result.ok(token);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> saveToken(String? token) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      if (token == null) {
        await sharedPreferences.remove(_tokenKey);
      } else {
        await sharedPreferences.setString(_tokenKey, token);
      }
      cachedToken = token;
      notifyListeners();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
