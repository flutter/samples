// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    this.restorationId,
    required this.child,
    required this.onTap,
  });

  final String? restorationId;
  final Widget child;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final index = _getSelectedIndex(GoRouter.of(context).location);
    return RestorationScope(
      restorationId: restorationId,
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Expanded(child: child),
            CupertinoTabBar(
              currentIndex: index,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.book),
                  label: 'My Garden',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings),
                  label: 'Settings',
                ),
              ],
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }

  int _getSelectedIndex(String location) {
    if (location.startsWith('/list')) return 0;
    if (location.startsWith('/favorites')) return 1;
    if (location.startsWith('/search')) return 2;
    if (location.startsWith('/settings')) return 3;
    return 0;
  }
}
