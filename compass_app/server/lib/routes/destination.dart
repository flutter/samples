import 'dart:io';

import 'package:shelf/shelf.dart';

Future<Response> destinationHandler(Request req) async {
  final destinationsFile = File('assets/destinations.json');
  final destinationsString = await destinationsFile.readAsString();
  return Response.ok(destinationsString);
}
