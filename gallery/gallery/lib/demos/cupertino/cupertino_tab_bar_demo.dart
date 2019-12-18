// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN cupertinoNavigationDemo

class _TabInfo {
  const _TabInfo(this.title, this.icon);

  final String title;
  final IconData icon;
}

class CupertinoTabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _tabInfo = [
      _TabInfo(
        GalleryLocalizations.of(context).cupertinoTabBarHomeTab,
        CupertinoIcons.home,
      ),
      _TabInfo(
        GalleryLocalizations.of(context).cupertinoTabBarChatTab,
        CupertinoIcons.conversation_bubble,
      ),
      _TabInfo(
        GalleryLocalizations.of(context).cupertinoTabBarProfileTab,
        CupertinoIcons.profile_circled,
      ),
    ];

    return DefaultTextStyle(
      style: CupertinoTheme.of(context).textTheme.textStyle,
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            for (final tabInfo in _tabInfo)
              BottomNavigationBarItem(
                title: Text(tabInfo.title),
                icon: Icon(tabInfo.icon),
              ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) => _CupertinoDemoTab(
              title: _tabInfo[index].title,
              icon: _tabInfo[index].icon,
            ),
            defaultTitle: _tabInfo[index].title,
          );
        },
      ),
    );
  }
}

class _CupertinoDemoTab extends StatelessWidget {
  const _CupertinoDemoTab({
    Key key,
    @required this.title,
    @required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      backgroundColor: CupertinoColors.systemBackground,
      child: Center(
        child: Icon(
          icon,
          semanticLabel: title,
          size: 100,
        ),
      ),
    );
  }
}

// END
