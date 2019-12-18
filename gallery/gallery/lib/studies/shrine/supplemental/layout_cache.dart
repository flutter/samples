// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class LayoutCache extends InheritedWidget {
  const LayoutCache({
    Key key,
    @required this.layout,
    @required Widget child,
  }) : super(key: key, child: child);

  static Map<String, List<List<int>>> of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LayoutCache>().layout;
  }

  final Map<String, List<List<int>>> layout;

  @override
  bool updateShouldNotify(LayoutCache old) => true;
}
