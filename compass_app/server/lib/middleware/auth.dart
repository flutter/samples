// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:shelf/shelf.dart';

import '../config/constants.dart';

/// Implements a simple auth Middleware.
///
/// This is provided as an example for Flutter architectural purposes only
/// and shouldn't be used as example on how to implement authentication
/// in production.
///
/// This Middleware checks if the token is present in the request headers,
/// otherwise returns a 401 Unauthorized response.
///
/// This token does not expire and is not secure.
Middleware authRequests() => (innerHandler) {
      return (Request request) async {
        if (request.url.path != 'login' &&
            request.headers['Authorization'] != 'Bearer ${Constants.token}') {
          // If the request is not a login request and the token is not present,
          // return a 401 Unauthorized response.
          return Response.unauthorized('Unauthorized');
        }

        return innerHandler(request);
      };
    };
