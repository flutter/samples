// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/foundation.dart';

abstract class PuzzleControls implements Listenable {
  void reset();

  int get clickCount;

  int get incorrectTiles;

  bool get autoPlay;

  void Function(bool newValue) get setAutoPlayFunction;
}
