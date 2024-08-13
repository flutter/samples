import 'package:flutter/foundation.dart';

import '../../../utils/result.dart';

/// Repository to save and get auth token.
/// Notifies listeners when the token changes.
abstract class AuthTokenRepository extends ChangeNotifier {
  /// Store the token
  Future<Result<void>> saveToken(String? token);

  /// Load the token
  Future<Result<String?>> getToken();
}
