// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN tabsDemo

class TabsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      GalleryLocalizations.of(context).colorsRed,
      GalleryLocalizations.of(context).colorsOrange,
      GalleryLocalizations.of(context).colorsGreen,
      GalleryLocalizations.of(context).colorsBlue,
      GalleryLocalizations.of(context).colorsIndigo,
      GalleryLocalizations.of(context).colorsPurple,
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(GalleryLocalizations.of(context).demoTabsTitle),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              for (final tab in tabs) Tab(text: tab),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (final tab in tabs)
              Center(
                child: Text(tab),
              ),
          ],
        ),
      ),
    );
  }
}

// END
