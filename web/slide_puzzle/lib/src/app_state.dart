// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/foundation.dart';

import 'core/puzzle_proxy.dart';

abstract class AppState {
  PuzzleProxy get puzzle;

  Listenable get animationNotifier;
}
