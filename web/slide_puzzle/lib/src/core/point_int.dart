// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math' as math;

class Point extends math.Point<int> {
  Point(int x, int y) : super(x, y);

  @override
  Point operator +(math.Point<int> other) => Point(x + other.x, y + other.y);
}
