// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// Shows [message] in a snack bar as long as a [ScaffoldMessengerState]
/// with global key [scaffoldMessengerKey] is anywhere in the widget tree.
void showSnackBar(String message) {
  final messenger = scaffoldMessengerKey.currentState;
  messenger?.showSnackBar(SnackBar(content: Text(message)));
}

/// Use this when creating [MaterialApp] if you want [showSnackBar] to work.
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey(
  debugLabel: 'scaffoldMessengerKey',
);
