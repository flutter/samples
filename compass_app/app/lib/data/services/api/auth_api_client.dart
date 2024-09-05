// TODO: Configurable baseurl/host/port
import 'dart:convert';
import 'dart:io';

import 'package:compass_model/model.dart';

import '../../../utils/result.dart';

class AuthApiClient {
  Future<Result<LoginResponse>> login(LoginRequest loginRequest) async {
    final client = HttpClient();
    try {
      final request = await client.post('localhost', 8080, '/login');
      request.write(jsonEncode(loginRequest));
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        return Result.ok(LoginResponse.fromJson(jsonDecode(stringData)));
      } else {
        return Result.error(const HttpException("Login error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
