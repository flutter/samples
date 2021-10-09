import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

// Set up a mock HTTP client.
final http.Client mockClient = MockClient(_mockHandler);

Future<http.Response> _mockHandler(http.Request request) async {
  var decodedJson = Map<String, dynamic>.from(
      json.decode(request.body) as Map<String, dynamic>);

  if (decodedJson['email'] == 'root' && decodedJson['password'] == 'password') {
    return http.Response('', 200);
  }

  return http.Response('', 401);
}
