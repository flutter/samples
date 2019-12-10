// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN listDemo

enum ListDemoType {
  oneLine,
  twoLine,
}

class ListDemo extends StatelessWidget {
  const ListDemo({Key key, this.type}) : super(key: key);

  final ListDemoType type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GalleryLocalizations.of(context).demoListsTitle),
      ),
      body: Scrollbar(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 1; index < 21; index++)
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('$index')),
                ),
                title: Text(
                  GalleryLocalizations.of(context).demoBottomSheetItem(index),
                ),
                subtitle: type == ListDemoType.twoLine
                    ? Text(GalleryLocalizations.of(context).demoListsSecondary)
                    : null,
              ),
          ],
        ),
      ),
    );
  }
}

// END
