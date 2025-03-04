// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/cupertino.dart';

enum ColorOptions {
  primary(CupertinoColors.black),
  gray(CupertinoColors.lightBackgroundGray),
  red(CupertinoColors.systemRed),
  orange(CupertinoColors.systemOrange),
  yellow(CupertinoColors.systemYellow),
  green(CupertinoColors.systemGreen),
  mint(CupertinoColors.systemMint),
  cyan(CupertinoColors.systemCyan),
  indigo(CupertinoColors.systemIndigo),
  purple(CupertinoColors.systemPurple);

  final Color color;
  static final _rnd = Random();

  const ColorOptions(this.color);

  factory ColorOptions.random() =>
      ColorOptions.values[_rnd.nextInt(ColorOptions.values.length)];
}
