// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:path_to_regexp/path_to_regexp.dart';

import 'parsed_route.dart';

/// Used by [TemplateRouteParser] to guard access to routes.
///
/// Override this class to change the route that is returned by
/// [TemplateRouteParser.parseRouteInformation] if a condition is not met, for
/// example, if the user is not signed in.
abstract class RouteGuard<T> {
  Future<T> redirect(T from);
}

/// Parses the URI path into a [ParsedRoute].
class TemplateRouteParser extends RouteInformationParser<ParsedRoute> {
  final List<String> _pathTemplates = [];
  RouteGuard<ParsedRoute>? guard;
  final ParsedRoute initialRoute;

  TemplateRouteParser({
    /// The list of allowed path templates (['/', '/users/:id'])
    required List<String> allowedPaths,
    /// The initial route
    String? initialRoute = '/',
    ///  [RouteGuard] used to redirect.
    this.guard,
  }) : initialRoute =
            ParsedRoute(initialRoute ?? '/', initialRoute ?? '/', {}, {}) {
    for (var template in allowedPaths) {
      _addRoute(template);
    }
  }

  void _addRoute(String pathTemplate) {
    _pathTemplates.add(pathTemplate);
  }

  @override
  Future<ParsedRoute> parseRouteInformation(
      RouteInformation routeInformation) async {
    return await _parse(routeInformation);
  }

  Future<ParsedRoute> _parse(RouteInformation routeInformation) async {
    final path = routeInformation.location!;
    final queryParams = Uri.parse(path).queryParameters;
    var parsedRoute = initialRoute;

    for (var pathTemplate in _pathTemplates) {
      final parameters = <String>[];
      var pathRegExp = pathToRegExp(pathTemplate, parameters: parameters);
      if (pathRegExp.hasMatch(path)) {
        final match = pathRegExp.matchAsPrefix(path);
        if (match == null) continue;
        final params = extract(parameters, match);
        parsedRoute = ParsedRoute(path, pathTemplate, params, queryParams);
      }
    }

    // Redirect if a guard is present
    var guard = this.guard;
    if (guard != null) {
      return guard.redirect(parsedRoute);
    }

    return parsedRoute;
  }

  @override
  RouteInformation restoreRouteInformation(ParsedRoute configuration) {
    return RouteInformation(location: configuration.path);
  }
}
