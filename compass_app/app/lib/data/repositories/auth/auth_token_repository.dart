import 'package:flutter/foundation.dart';

import '../../../utils/result.dart';

/// Repository to save and get auth token.
/// Notifies listeners when the token changes e.g. user logs out.
abstract class AuthTokenRepository extends ChangeNotifier {
  /// Get the token.
  /// Value may be null if not yet fetched
  String? get token;

  /// Fetch stored token
  /// If the value is null, usually means that the user is logged out.
  Future<Result<String?>> fetchToken({bool notify = false});

  /// Store the token.
  /// Will notifiy listeners.
  Future<Result<void>> saveToken(String? token);

  /// Returns true when the token exists, otherwise false.
  bool get isAuthenticated;

  Future<bool> hasToken() async {
    final result = await fetchToken(notify: false);
    return result is Ok<String?> && result.value != null;
  }
}
