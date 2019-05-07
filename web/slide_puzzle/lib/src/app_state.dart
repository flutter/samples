// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'core/puzzle_animator.dart';
import 'flutter.dart';
import 'shared_theme.dart';

abstract class AppState {
  TabController get tabController;

  PuzzleProxy get puzzle;

  bool get autoPlay;

  void setAutoPlay(bool newValue);

  AnimationNotifier get animationNotifier;

  Iterable<SharedTheme> get themeData;

  SharedTheme get currentTheme;

  set currentTheme(SharedTheme theme);
}

abstract class AnimationNotifier implements Listenable {
  void animate();

  void dispose();
}
