// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' show Random;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN cupertinoRefreshDemo

class CupertinoRefreshControlDemo extends StatefulWidget {
  @override
  _CupertinoRefreshControlDemoState createState() =>
      _CupertinoRefreshControlDemoState();
}

class _CupertinoRefreshControlDemoState
    extends State<CupertinoRefreshControlDemo> {
  static const listCount = 20;
  var randomList = List<int>.generate(listCount, (i) => i + 1);

  void _shuffleList() => randomList.shuffle(Random());

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        // If left unspecified, the [CustomScrollView] appends an
        // [AlwaysScrollableScrollPhysics]. Behind the scene, the ScrollableState
        // will attach that [AlwaysScrollableScrollPhysics] to the output of
        // [ScrollConfiguration.of] which will be a [ClampingScrollPhysics]
        // on Android.
        // To demonstrate the iOS behavior in this demo and to ensure that the list
        // always scrolls, we specifically use a [BouncingScrollPhysics] combined
        // with a [AlwaysScrollableScrollPhysics]
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            largeTitle: Text(
              GalleryLocalizations.of(context).demoCupertinoPullToRefreshTitle,
            ),
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1))
                ..then<void>((_) {
                  if (mounted) {
                    setState(() => _shuffleList());
                  }
                });
            },
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final title = GalleryLocalizations.of(context)
                    .starterAppDrawerItem(randomList[index]);
                return ListTile(title: Text(title));
              },
              childCount: listCount,
            ),
          ),
        ],
      ),
    );
  }
}

// END
