// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'core/puzzle_animator.dart';
import 'flutter.dart';

abstract class AppState {
  PuzzleProxy get puzzle;

  bool get autoPlay;

  void setAutoPlay(bool newValue);

  Listenable get animationNotifier;

  void clickOrShake(int tileValue) {
    setAutoPlay(false);
    puzzle.clickOrShake(tileValue);
  }

  void Function(bool newValue) get setAutoPlayFunction {
    if (puzzle.solved) {
      return null;
    }
    return setAutoPlay;
  }
}
