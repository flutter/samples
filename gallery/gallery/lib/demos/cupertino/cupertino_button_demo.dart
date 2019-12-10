// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN cupertinoButtonDemo

class CupertinoButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle:
            Text(GalleryLocalizations.of(context).demoCupertinoButtonsTitle),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              child: Text(
                GalleryLocalizations.of(context).cupertinoButton,
              ),
              onPressed: () {},
            ),
            SizedBox(height: 16),
            CupertinoButton.filled(
              child: Text(
                GalleryLocalizations.of(context).cupertinoButtonWithBackground,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// END
