// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:web_dashboard/src/widgets/edit_entry.dart';
import 'package:web_dashboard/src/widgets/edit_item.dart';
import 'package:web_dashboard/src/widgets/third_party/adaptive_scaffold.dart';

import 'dashboard.dart';
import 'entries.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      currentIndex: _pageIndex,
      destinations: [
        AdaptiveScaffoldDestination(title: 'Home', icon: Icons.home),
        AdaptiveScaffoldDestination(title: 'Entries', icon: Icons.list),
        AdaptiveScaffoldDestination(title: 'Settings', icon: Icons.settings),
      ],
      body: _pageAtIndex(_pageIndex),
      onNavigationIndexChange: (newIndex) {
        setState(() {
          _pageIndex = newIndex;
        });
      },
      floatingActionButton: _pageIndex == 2 ? null : FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          switch (_pageIndex) {
            case 0:
              showDialog(context: context, child: NewItemDialog());
              break;
            case 1:
              showDialog(context: context, child: NewEntryDialog());
              break;
            default:
              print('Unsupported action');
          }
        },
      ),
    );
  }

  static Widget _pageAtIndex(int index) {
    switch (index) {
      case 1:
        return EntriesPage();
      case 2:
        return Center(child: Text('Settings page'));
      case 0:
      default:
        return DashboardPage();
    }
  }
}
