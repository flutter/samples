// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'parsed_route.dart';
import 'parser.dart';

/// The current route state. To change the current route, call obtain the state using
/// `RouteState.of(context)` and call `go()`:
///
/// ```
/// RouteState.of(context).go('/book/2');
/// ```
class RouteState extends ChangeNotifier {
  TemplateRouteParser parser;
  ParsedRoute _route;

  RouteState(this.parser)
      : _route = parser.initialRoute;

  ParsedRoute get route => _route;

  set route(ParsedRoute route) {
    _route = route;
    notifyListeners();
  }

  Future<void> go(String route) async {
    this.route =
        await parser.parseRouteInformation(RouteInformation(location: route));
  }
}

/// Provides the current [RouteState] to descendent widgets in the tree.
class RouteStateScope extends InheritedNotifier<RouteState> {
  const RouteStateScope({
    required RouteState notifier,
    required Widget child,
    Key? key,
  }) : super(key: key, notifier: notifier, child: child);

  static RouteState? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<RouteStateScope>()
        ?.notifier;
  }
}
