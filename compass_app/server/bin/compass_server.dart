// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:compass_server/middleware/auth.dart';
import 'package:compass_server/routes/booking.dart';
import 'package:compass_server/routes/continent.dart';
import 'package:compass_server/routes/destination.dart';
import 'package:compass_server/routes/login.dart';
import 'package:compass_server/routes/user.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

// Configure routes.
final _router = Router()
  ..get('/continent', continentHandler)
  ..mount('/destination', DestinationApi().router.call)
  ..mount('/booking', BookingApi().router.call)
  ..mount('/user', UserApi().router.call)
  ..mount('/login', LoginApi().router.call);

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline that logs requests.
  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(authRequests())
      .addHandler(_router.call);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
