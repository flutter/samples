// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

class FrameAnalyzer {
  final WidgetsBinding _binding;
  final Completer _onDone = Completer();
  int _remainingFrames;

  final int additionalFrames;
  List<int> additionalFrameTimes = [];

  FrameAnalyzer(this._binding, {this.additionalFrames = 10})
      : _remainingFrames = additionalFrames;

  Future<void> captureAdditionalFrames() {
    _binding.addTimingsCallback(_timingsCallback);
    return _onDone.future;
  }

  void _reportFrame(FrameTiming frameTiming) {
    additionalFrameTimes.add(frameTiming.totalSpan.inMilliseconds);
  }

  void _timingsCallback(List<FrameTiming> timings) {
    int i = 0;
    while (_remainingFrames > 0 && i < timings.length) {
      _reportFrame(timings[i]);
      i++;
      _remainingFrames--;
    }
    if (_remainingFrames <= 0) {
      _binding.removeTimingsCallback(_timingsCallback);

      _onDone.complete();
    }
  }
}
