// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/api.dart';
import 'api/mock.dart';
import 'models/app_state.dart';
import 'pages/home.dart';
import 'widgets/third_party/adaptive_scaffold.dart';

/// An app that shows a responsive dashboard.
class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  int _pageIndex = 0;
  AppState _appState;

  void initState() {
    super.initState();

    var api = MockDashboardApi()..fillWithMockData();
    _appState = AppState(api);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppState>(create: (_) => _appState),
      ],
      child: MaterialApp(
        // Use a builder so that showDialog can use the right BuildContext
        home: Builder(
          builder: (context) => AdaptiveScaffold(
            currentIndex: _pageIndex,
            destinations: [
              AdaptiveScaffoldDestination(title: 'Home', icon: Icons.home),
              AdaptiveScaffoldDestination(title: 'Entries', icon: Icons.list),
              AdaptiveScaffoldDestination(
                  title: 'Settings', icon: Icons.settings),
            ],
            body: _pageAtIndex(_pageIndex),
            onNavigationIndexChange: (newIndex) {
              setState(() {
                _pageIndex = newIndex;
              });
            },
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                _appState.api.items.insert(Item('Foo'));
                showDialog(
                    context: context,
                    child: SimpleDialog(
                      children: [
                        Text('Add an item to track'),
                        Text('Do it.'),
                      ],
                    ));
              },
            ),
          ),
        ),
      ),
    );
  }

  static Widget _pageAtIndex(int index) {
    switch (index) {
      case 1:
        return Center(child: Text('page 2'));
      case 2:
        return Center(child: Text('page 3'));
      case 0:
      default:
        return HomePage();
    }
  }
}
