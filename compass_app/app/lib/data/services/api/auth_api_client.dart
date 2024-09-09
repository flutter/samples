import 'dart:convert';
import 'dart:io';

import '../../../utils/result.dart';
import 'model/login_request/login_request.dart';
import 'model/login_response/login_response.dart';

// TODO: Configurable baseurl/host/port
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
