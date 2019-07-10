// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/foundation.dart';

import 'core/puzzle_proxy.dart';

abstract class AppState {
  PuzzleProxy get puzzle;

  Listenable get animationNotifier;
}
