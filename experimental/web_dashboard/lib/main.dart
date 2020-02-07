// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'src/adaptive_scaffold.dart';

/// The [Key] for the inner [Navigator].
GlobalKey _navigatorKey = GlobalKey();

void main() {
  runApp(DashboardApp());
}

/// An app that shows a responsive dashboard.
class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Forward the initial route to the app shell.
      onGenerateInitialRoutes: (initialRoute) {
        return [
          PageRouteBuilder(
            // Use the same route settings in the child navigator.
            settings: RouteSettings(name: initialRoute),
            // Send the route to AppShell so it can select the correct item in
            // the Drawer / NavigationRail / BottomAppBar.
            pageBuilder: (context, animation, secondaryAnimation) {
              return AppShell(initialRoute);
            },
          ),
        ];
      },
    );
  }
}

/// The outer "shell" of the app. Uses an [AdaptiveScaffold] with a [Navigator]
/// to handle route events and display the correct page in the Drawer /
/// BottomNavigationBar, or NavigationRail, as well as the correct page in the
/// body of the Scaffold.
class AppShell extends StatefulWidget {
  final String routeName;

  AppShell(this.routeName);

  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;

  void initState() {
    super.initState();
    _currentIndex = _indexForRoute(widget.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: Text('Dashboard App'),
      body: Navigator(
        key: _navigatorKey,
        initialRoute: widget.routeName,
        onGenerateRoute: (settings) {
          var routeName = settings.name;
          var pageWidget = _pageForRoute(routeName);

          // Change the _currentIndex to highlight the correct menu item /
          // BottomNavigationBarItem.
          //
          // Use a post-frame callback to avoid calling setState() during the
          // initial build phase. Right now this is being called in the wrong
          // order. (Refreshing the browser with the initial route set to
          // '/settings' invokes onGenerateRoute with '/' instead of
          // '/settings'.)
          SchedulerBinding.instance.addPostFrameCallback((dur) {
            setState(() {
              _currentIndex = _indexForRoute(routeName);
            });
          });
          // Instead of a SchedulerBinding, this check should ensure that
          // setState() isn't called during the initial build phase
          // (_currentIndex is set to the correct value in initState()).
          //
          // if (_currentIndex != _indexForRoute(routeName)) {
          //   setState(() {
          //      _currentIndex = _indexForRoute(routeName);
          //   });
          // }

          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return pageWidget;
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var curveTween = CurveTween(curve: Curves.easeInQuart);
              return FadeTransition(
                opacity: animation.drive(curveTween),
                child: child,
              );
            },
            settings: settings,
          );
        },
      ),
      currentIndex: _currentIndex,
      destinations: const [
        AdaptiveScaffoldDestination(title: 'Dashboard', icon: Icons.dashboard),
        AdaptiveScaffoldDestination(title: 'Metrics', icon: Icons.show_chart),
        AdaptiveScaffoldDestination(title: 'Settings', icon: Icons.settings),
      ],
      onNavigationIndexChange: (idx) {
        setState(() {
          _currentIndex = idx;
        });

        // Use the inner Navigator to change the route.
        var navState = _navigatorKey.currentState as NavigatorState;
        navState.pushNamed(_routeForIndex(idx));
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

List<String> _routes = [
  '/dashboard',
  '/metrics',
  '/settings',
];

String _routeForIndex(int index) {
  if (index >= 0 && index < _routes.length) {
    return _routes[index];
  }
  return _routes[0];
}

Widget _pageForRoute(String name) {
  if (name == '/dashboard') return DashboardPage();
  if (name == '/metrics') return MetricsPage();
  if (name == '/settings') return SettingsPage();
  return DashboardPage();
}

int _indexForRoute(String name) {
  var idx = _routes.indexOf(name);
  if (idx < 0) {
    return 0;
  }
  return idx;
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}

class MetricsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Metrics'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Go to Dashboard'),
          onPressed: () {
            (_navigatorKey.currentState as NavigatorState)
                .pushReplacementNamed('/dashboard');
          },
        ),
      ),
    );
  }
}
