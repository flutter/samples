import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/result.dart';
import 'auth_token_repository.dart';

/// [AuthTokenRepository] that stores the token in Shared Preferences.
/// Provided for demo purposes, consider using a secure store instead.
class AuthTokenRepositorySharedPrefs extends AuthTokenRepository {
  static const _tokenKey = 'TOKEN';
  String? cachedToken;

  @override
  String? get token => cachedToken;

  @override
  bool get isAuthenticated => cachedToken != null;

  @override
  Future<Result<String?>> fetchToken({bool notify = false}) async {
    if (cachedToken != null) return Result.ok(cachedToken);

    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      cachedToken = sharedPreferences.getString(_tokenKey);
      if (notify) {
        notifyListeners();
      }
      return Result.ok(cachedToken);
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
