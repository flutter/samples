// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/foundation.dart';

abstract class PuzzleControls implements Listenable {
  void reset();

  int get clickCount;

  int get incorrectTiles;

  bool get autoPlay;

  void Function(bool newValue) get setAutoPlayFunction;
}
