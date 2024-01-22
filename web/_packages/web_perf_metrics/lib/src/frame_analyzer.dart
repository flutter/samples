// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

import 'startup_analyzer.dart';

class FrameAnalyzer {
  final WidgetsBinding _binding;
  final int additionalFrameCount;
  int? firstFrameTime;
  List<int> additionalFrameTimes = [];
  int _remainingFrames;
  VoidCallback? onCompleted;

  FrameAnalyzer(this._binding,
      {this.onCompleted, this.additionalFrameCount = 10})
      : _remainingFrames = additionalFrameCount;

  Future captureFirstFrame() {
    final completer = Completer();
    flutterWebStartupAnalyzer.markStart('firstFrame');
    _binding.addPostFrameCallback((timeStamp) {
      flutterWebStartupAnalyzer.markFinished('firstFrame');
      flutterWebStartupAnalyzer.capture('firstFrame');
      firstFrameTime = timeStamp.inMilliseconds;
      completer.complete();
    });
    return completer.future;
  }

  void captureAdditionalFrames() {
    _binding.addTimingsCallback(_timingsCallback);
  }

  _reportFrame(FrameTiming frameTiming) {
    additionalFrameTimes.add(frameTiming.totalSpan.inMilliseconds);
  }

  _timingsCallback(timings) {
    int i = 0;
    while (_remainingFrames > 0 && i < timings.length) {
      _reportFrame(timings[i]);
      i++;
      _remainingFrames--;
    }
    if (_remainingFrames <= 0) {
      _binding.removeTimingsCallback(_timingsCallback);

      if (onCompleted != null) {
        onCompleted!();
      }
    }
  }
}
