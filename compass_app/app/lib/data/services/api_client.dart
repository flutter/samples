import 'dart:convert';
import 'dart:io';
import 'package:compass_model/model.dart';

import '../../utils/result.dart';

// TODO: Configurable baseurl/host/port
class ApiClient {
  ApiClient();

  String? _authToken;

  set token(String? token) {
    _authToken = token;
  }

  Future<void> _authHeader(HttpHeaders headers) async {
    if (_authToken != null) {
      headers.add(HttpHeaders.authorizationHeader, 'Bearer $_authToken');
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
