// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/services/shared_preferences_service.dart';
import 'package:compass_app/utils/result.dart';

class FakeSharedPreferencesService implements SharedPreferencesService {
  String? token;

  @override
  Future<Result<String?>> fetchToken() async {
    return Result.ok(token);
  }

  @override
  Future<Result<void>> saveToken(String? token) async {
    this.token = token;
    return Result.ok(null);
  }
}
