import 'dart:convert';
import 'dart:io';

import 'package:shared/shared.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

int count = 0;

// Configure routes.
final _router = Router()
  ..post('/', _incrementHandler)
  ..get('/', _getValueHandler);

Future<Response> _incrementHandler(Request request) async {
  final incr = Increment.fromJson(json.decode(await request.readAsString()));
  count += incr.by;
  return Response.ok(json.encode(Count(count).toJson()));
}

Response _getValueHandler(Request request) =>
    Response.ok(json.encode(Count(count).toJson()));

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline that logs requests.
  final handler = Pipeline().addMiddleware(logRequests()).addHandler(_router);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
