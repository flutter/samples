// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import '../../../utils/result.dart';
import 'model/login_request/login_request.dart';
import 'model/login_response/login_response.dart';

class AuthApiClient {
  AuthApiClient({
    String? host,
    int? port,
    HttpClient Function()? clientFactory,
  })  : _host = host ?? 'localhost',
        _port = port ?? 8080,
        _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
  final HttpClient Function() _clientFactory;

  Future<Result<LoginResponse>> login(LoginRequest loginRequest) async {
    final client = _clientFactory();
    try {
      final request = await client.post(_host, _port, '/login');
      request.write(jsonEncode(loginRequest));
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        return Result.ok(LoginResponse.fromJson(jsonDecode(stringData)));
      } else {
        return const Result.error(HttpException("Login error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
