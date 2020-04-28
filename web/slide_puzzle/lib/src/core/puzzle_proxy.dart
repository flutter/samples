// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math' show Point;

enum PuzzleEvent { click, random, reset, noop }

abstract class PuzzleProxy {
  int get width;

  int get height;

  int get length;

  bool get solved;

  void clickOrShake(int tileValue);

  int get tileCount;

  Point<double> location(int index);

  bool isCorrectPosition(int value);
}
