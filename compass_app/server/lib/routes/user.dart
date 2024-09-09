import 'dart:convert';

import 'package:compass_server/config/constants.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

/// Implements a simple user API.
///
/// This is provided as an example for Flutter architectural purposes only
/// and shouldn't be used as example on how to use tokens and authentication
/// in production.
///
/// This API only returns a hardcoded user.
class UserApi {
  Router get router {
    final router = Router();

    router.get('/', (Request request) async {
      return Response.ok(
        json.encode(Constants.user),
        headers: {'Content-Type': 'application/json'},
      );
    });

    return router;
  }
}
