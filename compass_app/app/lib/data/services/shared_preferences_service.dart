// ignore_for_file: public_member_api_docs, sort_constructors_first
// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/result.dart';

class SharedPreferencesService {
  static const _tokenKey = 'TOKEN';
  final _log = Logger('SharedPreferencesService');
  final SharedPreferencesWithCache _prefs;
  SharedPreferencesService(this._prefs);

  static Future<SharedPreferencesService> create() async {
    final prefs = await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(allowList: {_tokenKey}),
    );
    return SharedPreferencesService(prefs);
  }

  Future<Result<String?>> fetchToken() async {
    try {
      _log.finer('Got token from SharedPreferences');
      return Result.ok(_prefs.getString(_tokenKey));
    } on Exception catch (e) {
      _log.warning('Failed to get token', e);
      return Result.error(e);
    }
  }

  Future<Result<void>> saveToken(String? token) async {
    try {
      if (token == null) {
        _log.finer('Removed token');
         _prefs.remove(_tokenKey);
      } else {
        _log.finer('Replaced token');
         _prefs.setString(_tokenKey, token);
      }
      return const Result.ok(null);
    } on Exception catch (e) {
      _log.warning('Failed to set token', e);
      return Result.error(e);
    }
  }
}
