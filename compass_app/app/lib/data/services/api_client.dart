import 'dart:convert';
import 'dart:io';
import 'package:compass_model/model.dart';

import '../../utils/result.dart';
import '../repositories/auth/auth_token_repository.dart';

typedef AuthTokenProvider = Future<String?> Function();

// TODO: Configurable baseurl/host/port
class ApiClient {
  ApiClient({
    /// Provide the auth token to be used in the request
    required AuthTokenRepository authTokenRepository,
  }) : _authTokenRepository = authTokenRepository;

  final AuthTokenRepository _authTokenRepository;

  Future<void> _authHeader(HttpHeaders headers) async {
    final result = await _authTokenRepository.getToken();
    if (result is Ok<String?>) {
      if (result.value != null) {
        headers.add(HttpHeaders.authorizationHeader, 'Bearer ${result.value}');
      }
    }
  }

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

  Future<Result<List<Continent>>> getContinents() async {
    final client = HttpClient();
    try {
      final request = await client.get('localhost', 8080, '/continent');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        return Result.ok(
            json.map((element) => Continent.fromJson(element)).toList());
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<Destination>>> getDestinations() async {
    final client = HttpClient();
    try {
      final request = await client.get('localhost', 8080, '/destination');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        return Result.ok(
            json.map((element) => Destination.fromJson(element)).toList());
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<List<Activity>>> getActivityByDestination(String ref) async {
    final client = HttpClient();
    try {
      final request =
          await client.get('localhost', 8080, '/destination/$ref/activity');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final activities =
            json.map((element) => Activity.fromJson(element)).toList();
        return Result.ok(activities);
      } else {
        return Result.error(const HttpException("Invalid response"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
