// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN cupertinoTextFieldDemo

class CupertinoTextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text('Text Fields'),
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                placeholder:
                    GalleryLocalizations.of(context).demoTextFieldEmail,
                keyboardType: TextInputType.emailAddress,
                clearButtonMode: OverlayVisibilityMode.editing,
                autocorrect: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                placeholder:
                    GalleryLocalizations.of(context).rallyLoginPassword,
                clearButtonMode: OverlayVisibilityMode.editing,
                obscureText: true,
                autocorrect: false,
              ),
            ),
            CupertinoTextField(
              prefix: Icon(
                CupertinoIcons.padlock_solid,
                size: 28,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              clearButtonMode: OverlayVisibilityMode.editing,
              keyboardType: TextInputType.number,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.0,
                    color: CupertinoColors.inactiveGray,
                  ),
                ),
              ),
              placeholder:
                  GalleryLocalizations.of(context).demoCupertinoTextFieldPIN,
            ),
          ],
        ),
      ),
    );
  }
}

// END
