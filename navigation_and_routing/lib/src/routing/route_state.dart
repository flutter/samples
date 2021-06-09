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
  ParsedRoute _route = ParsedRoute('/', '/', {}, {});

  RouteState(this.parser);

  ParsedRoute get route => _route;

  set route(ParsedRoute route) {
    _route = route;
    notifyListeners();
  }

  Future<void> go(String route) async {
    this.route =
        await parser.parseRouteInformation(RouteInformation(location: route));
  }

  static RouteState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RouteStateScope>()!.state;
  }
}

/// Provides the current [RouteState] to descendent widgets in the tree.
class RouteStateScope extends InheritedWidget {
  final RouteState state;

  const RouteStateScope({
    Key? key,
    required this.state,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(RouteStateScope oldWidget) =>
      state != oldWidget.state;
}
