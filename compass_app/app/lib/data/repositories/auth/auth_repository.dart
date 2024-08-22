import 'package:flutter/foundation.dart';

import '../../../utils/result.dart';

abstract class AuthRepository extends ChangeNotifier {
  /// Returns true when the user is logged in
  Future<bool> get isAuthenticated;

  /// Perform login
  Future<Result<void>> login({
    required String email,
    required String password,
  });

  /// Perform logout
  Future<Result<void>> logout();
}
