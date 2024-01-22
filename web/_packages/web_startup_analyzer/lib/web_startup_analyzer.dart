// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop_unsafe';

import 'package:flutter/widgets.dart';

import 'src/frame_analyzer.dart';
import 'src/startup_analyzer.dart';

class WebStartupAnalyzer {
  final _frameAnalyzer;

  WebStartupAnalyzer({int additionalFrameCount = 5})
      : _frameAnalyzer = FrameAnalyzer(
            WidgetsFlutterBinding.ensureInitialized(),
            additionalFrameCount: additionalFrameCount);

  Map<String, dynamic> captureStartupMetrics() {
    flutterWebStartupAnalyzer.markFinished('appRunnerRunApp');
    flutterWebStartupAnalyzer.captureAll();
    return _timingData();
  }

  Map<String, dynamic> _timingData() {
    return <String, dynamic>{
      'domContentLoaded': flutterWebStartupAnalyzer.timings['domContentLoaded'],
      'loadEntrypoint': flutterWebStartupAnalyzer.timings['loadEntrypoint'],
      'initializeEngine': flutterWebStartupAnalyzer.timings['initializeEngine'],
      'appRunnerRunApp': flutterWebStartupAnalyzer.timings['appRunnerRunApp'],
    };
  }

  Map<String, dynamic> _frameData() {
    return {
      'firstFrame': flutterWebStartupAnalyzer.timings['firstFrame'],
      'additionalFrames': _frameAnalyzer.additionalFrameTimes,
    };
  }

  Future<Map<String, dynamic>> captureFlutterFrameData() {
    final thisCompleter = Completer<Map<String, dynamic>>();

    _frameAnalyzer.onCompleted = () {
      flutterWebStartupAnalyzer.captureAll();
      thisCompleter.complete(_frameData());
    };

    _frameAnalyzer.captureFirstFrame().then((value) {
      flutterWebStartupAnalyzer.captureAll();
    });

    _frameAnalyzer.captureAdditionalFrames();
    return thisCompleter.future;
  }
}
