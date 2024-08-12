import 'dart:convert';

import 'package:compass_model/model.dart';
import 'package:compass_server/config/constants.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

/// Implements a simple login API.
///
/// This is provided as an example for Flutter architectural purposes only
/// and shouldn't be used as example on how to implement authentication
/// in production.
///
/// This API only accepts a fixed email and password for demonstration purposes,
/// then returns a hardcoded token and a user id.
///
/// This token does not expire and is not secure.
class LoginApi {
  Router get router {
    final router = Router();

    router.post('/', (Request request) async {
      final body = await request.readAsString();
      final loginRequest = LoginRequest.fromJson(json.decode(body));

      if (loginRequest.email == Constants.email &&
          loginRequest.password == Constants.password) {
        return Response.ok(
          json.encode(
            LoginResponse(
              token: Constants.token,
              userId: Constants.userId,
            ),
          ),
          headers: {'Content-Type': 'application/json'},
        );
      }

      return Response.unauthorized('Invalid credentials');
    });

    return router;
  }
}
