import 'dart:convert';
import 'dart:io';

import 'package:compass_shared/model.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

void main() {
  final port = '8080';
  final host = 'http://0.0.0.0:$port';
  late Process p;

  setUp(() async {
    p = await Process.start(
      'dart',
      ['run', 'bin/compass_server.dart'],
      environment: {'PORT': port},
    );
    // Wait for server to start and print to stdout.
    await p.stdout.first;
  });

  tearDown(() => p.kill());

  test('Get Continent end-point', () async {
    // Query /continent end-point
    final response = await get(Uri.parse('$host/continent'));
    expect(response.statusCode, 200);
    // Parse json response list
    final list = jsonDecode(response.body) as List<dynamic>;
    // Parse items
    final continents = list.map((element) => Continent.fromJson(element));
    expect(continents.length, 7);
    expect(continents.first.name, 'Europe');
  });

  test('Get Destination end-point', () async {
    // Query /destination end-point
    final response = await get(Uri.parse('$host/destination'));
    expect(response.statusCode, 200);
    // Parse json response list
    final list = jsonDecode(response.body) as List<dynamic>;
    // Parse items
    final destination = list.map((element) => Destination.fromJson(element));
    expect(destination.length, 137);
    expect(destination.first.name, 'Alaska');
  });

  test('404', () async {
    final response = await get(Uri.parse('$host/foobar'));
    expect(response.statusCode, 404);
  });
}
