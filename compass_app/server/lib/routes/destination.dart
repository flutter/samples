import 'dart:io';

import 'package:shelf/shelf.dart';

Future<Response> destinationHandler(Request req) async {
  final file = File('assets/destinations.json');
  final jsonString = await file.readAsString();
  return Response.ok(jsonString);
}
