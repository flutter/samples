// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN cupertinoActivityIndicatorDemo

class CupertinoProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Activity Indicator'), // TODO
      ),
      child: const Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}

// END
