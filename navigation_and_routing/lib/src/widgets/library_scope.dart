// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data.dart';

class LibraryScope extends InheritedWidget {
  final Library library;

  const LibraryScope({
    Key? key,
    required this.library,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(LibraryScope oldWidget) =>
      library != oldWidget.library;

  static Library of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LibraryScope>()!.library;
  }
}
