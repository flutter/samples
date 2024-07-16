import 'dart:convert';
import 'dart:io';
import 'package:compass_shared/model.dart';

import '../../utils/result.dart';

// TODO: Basic auth request
class ApiClient {
  Future<Result<List<Continent>>> getContinents() async {
    final client = HttpClient();
    try {
      final request = await client.get('localhost', 8080, '/continent');
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
}
