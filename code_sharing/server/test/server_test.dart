import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:test/test.dart';

// Manual test:
// $ dart bin/server.dart
// $ curl -X POST -d '{"by": 1}' -H "Content-Type: application/json" localhost:8080/

void main() {
  final port = '8080';
  final host = 'http://0.0.0.0:$port';
  late Process p;

  group(
    'Integration test should',
    () {
      setUp(() async {
        p = await Process.start(
          'dart',
          ['run', 'bin/server.dart'],
          environment: {'PORT': port},
        );
        // Wait for server to start and print to stdout.
        await p.stdout.first;
      });

      tearDown(() => p.kill());

      test('Increment', () async {
        final response = await post(Uri.parse('$host/'), body: '{"by": 1}');
        expect(response.statusCode, 200);
        expect(response.body, '{"value":1}');
      });

      test('Get', () async {
        final response = await get(Uri.parse('$host/'));
        expect(response.statusCode, 200);
        final resp = json.decode(response.body) as Map;
        expect(resp.containsKey('value'), true);
      });
    },
    onPlatform: <String, dynamic>{
      'windows': [
        Skip('Failing on Windows CI'),
      ]
    },
  );
}
