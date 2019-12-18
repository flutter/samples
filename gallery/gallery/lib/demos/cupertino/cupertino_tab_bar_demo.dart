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
    final _tabInfo = <_TabInfo>[
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
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) => _CupertinoDemoTab(
                  title: _tabInfo[0].title,
                  icon: _tabInfo[0].icon,
                ),
                defaultTitle: _tabInfo[0].title,
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (context) => _CupertinoDemoTab(
                  title: _tabInfo[1].title,
                  icon: _tabInfo[1].icon,
                ),
                defaultTitle: _tabInfo[1].title,
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (context) => _CupertinoDemoTab(
                  title: _tabInfo[2].title,
                  icon: _tabInfo[2].icon,
                ),
                defaultTitle: _tabInfo[2].title,
              );
              break;
          }
          return null;
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
