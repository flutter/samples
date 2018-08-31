// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:veggieseasons/styles.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Search'),
      ),
      backgroundColor: Styles.scaffoldBackground,
      child: Center(
        child: Text('Not yet implemented.'),
      ),
    );
  }
}
