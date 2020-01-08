// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN cupertinoNavigationBarDemo

class CupertinoNavigationBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(onGenerateRoute: (settings) {
      return _NoAnimationCupertinoPageRoute<void>(
        title: GalleryLocalizations.of(context).demoCupertinoNavigationBarTitle,
        builder: (context) => CupertinoPageScaffold(
          child: CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar(
                automaticallyImplyLeading: false,
              ),
              SliverPadding(
                padding: MediaQuery.of(context)
                    .removePadding(removeTop: true)
                    .padding,
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final title = GalleryLocalizations.of(context)
                          .starterAppDrawerItem(index + 1);
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute<void>(
                            title: title,
                            builder: (context) => _SecondPage(),
                          ));
                        },
                        title: Text(title),
                      );
                    },
                    childCount: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class _SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Container(),
    );
  }
}

/// A CupertinoPageRoute without any transition animations.
class _NoAnimationCupertinoPageRoute<T> extends CupertinoPageRoute<T> {
  _NoAnimationCupertinoPageRoute({
    @required WidgetBuilder builder,
    String title,
  }) : super(builder: builder, title: title);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}

// END
