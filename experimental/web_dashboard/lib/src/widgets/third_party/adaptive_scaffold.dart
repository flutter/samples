// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

bool _isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 960.0;
}

bool _isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 640.0;
}

/// See bottomNavigationBarItem or NavigationRailDestination
class AdaptiveScaffoldDestination {
  final String title;
  final IconData icon;

  const AdaptiveScaffoldDestination({
    @required this.title,
    @required this.icon,
  });
}

/// A widget that adapts to the current display size, displaying a [Drawer],
/// [NavigationRail], or [BottomNavigationBar]. Navigation destinations are
/// defined in the [destinations] parameter.
class AdaptiveScaffold extends StatelessWidget {
  final Widget title;
  final List<Widget> actions;
  final Widget body;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;
  final FloatingActionButton floatingActionButton;

  const AdaptiveScaffold({
    Key key,
    this.title,
    this.body,
    this.actions = const [],
    @required this.currentIndex,
    @required this.destinations,
    this.onNavigationIndexChange,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Show a Drawer
    if (_isLargeScreen(context)) {
      return Row(
        children: [
          Drawer(
            child: Column(
              children: [
                DrawerHeader(
                  child: Center(
                    child: title,
                  ),
                ),
                for (var d in destinations)
                  ListTile(
                    leading: Icon(d.icon),
                    title: Text(d.title),
                    selected: destinations.indexOf(d) == currentIndex,
                    onTap: () => _destinationTapped(d),
                  ),
              ],
            ),
          ),
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                actions: actions,
              ),
              body: body,
              floatingActionButton: floatingActionButton,
            ),
          ),
        ],
      );
    }

    // Show a navigation rail
    if (_isMediumScreen(context)) {
      return Scaffold(
        appBar: AppBar(
          title: title,
          actions: actions,
        ),
        body: Row(
          children: [
            NavigationRail(
              leading: floatingActionButton,
              destinations: [
                ...destinations.map(
                  (d) => NavigationRailDestination(
                    icon: Icon(d.icon),
                    label: Text(d.title),
                  ),
                ),
              ],
              selectedIndex: currentIndex,
              onDestinationSelected: onNavigationIndexChange ?? (_) {},
            ),
            VerticalDivider(
              width: 1,
              thickness: 1,
              color: Colors.grey[300],
            ),
            Expanded(
              child: body,
            ),
          ],
        ),
      );
    }

    // Show a bottom app bar
    return Scaffold(
      body: body,
      appBar: AppBar(
        title: title,
        actions: actions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          ...destinations.map(
            (d) => BottomNavigationBarItem(
              icon: Icon(d.icon),
              title: Text(d.title),
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: onNavigationIndexChange,
      ),
      floatingActionButton: floatingActionButton,
    );
  }

  void _destinationTapped(AdaptiveScaffoldDestination destination) {
    var idx = destinations.indexOf(destination);
    if (idx != currentIndex) {
      onNavigationIndexChange(idx);
    }
  }
}
