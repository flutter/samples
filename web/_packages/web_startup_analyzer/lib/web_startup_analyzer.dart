// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:flutter/widgets.dart';

import 'src/frame_analyzer.dart';
import 'src/startup_analyzer.dart';

class WebStartupAnalyzer {
  final WidgetsBinding _widgetsBinding;
  late final FrameAnalyzer _frameAnalyzer;
  List<int>? _additionalFrames;

  late final Listenable onChange;
  Map<String, dynamic> startupTiming = {};
  ValueNotifier<double?> onFirstFrame = ValueNotifier(null);
  ValueNotifier<(double, double)?> onFirstPaint = ValueNotifier(null);
  ValueNotifier<List<int>?> onAdditionalFrames = ValueNotifier(null);

  double get domContentLoaded =>
      (flutterWebStartupAnalyzer.timings['domContentLoaded'] as JSNumber)
          .toDartDouble;
  double get loadEntrypoint =>
      (flutterWebStartupAnalyzer.timings['loadEntrypoint'] as JSNumber)
          .toDartDouble;
  double get initializeEngine =>
      (flutterWebStartupAnalyzer.timings['initializeEngine'] as JSNumber)
          .toDartDouble;
  double get appRunnerRunApp =>
      (flutterWebStartupAnalyzer.timings['appRunnerRunApp'] as JSNumber)
          .toDartDouble;
  double? get firstFrame =>
      (flutterWebStartupAnalyzer.timings['firstFrame'] as JSNumber?)
          ?.toDartDouble;
  double? get firstPaint =>
      (flutterWebStartupAnalyzer.timings['first-paint'] as JSNumber?)
          ?.toDartDouble;
  double? get firstContentfulPaint =>
      (flutterWebStartupAnalyzer.timings['first-contentful-paint'] as JSNumber?)
          ?.toDartDouble;
  List<int>? get additionalFrames => _additionalFrames;

  WebStartupAnalyzer({int additionalFrameCount = 5})
      : _widgetsBinding = WidgetsFlutterBinding.ensureInitialized() {
    _frameAnalyzer =
        FrameAnalyzer(_widgetsBinding, additionalFrames: additionalFrameCount);
    _captureStartupMetrics();
    startupTiming = {
      'domContentLoaded': domContentLoaded,
      'loadEntrypoint': loadEntrypoint,
      'initializeEngine': initializeEngine,
      'appRunnerRunApp': appRunnerRunApp,
    };
    _captureFirstFrame().then((value) {
      flutterWebStartupAnalyzer.captureAll();
      onFirstFrame.value = firstFrame;

      // Capture first-paint and first-contentful-paint
      Future.delayed(const Duration(milliseconds: 200)).then((_) {
        flutterWebStartupAnalyzer.capturePaint();
        onFirstPaint.value = (firstPaint!, firstContentfulPaint!);
      });
    });
    captureFlutterFrameData().then((value) {
      _additionalFrames = value;
      onAdditionalFrames.value = value;
    });
    onChange =
        Listenable.merge([onFirstFrame, onFirstPaint, onAdditionalFrames]);
  }

  _captureStartupMetrics() {
    flutterWebStartupAnalyzer.markFinished('appRunnerRunApp');
    flutterWebStartupAnalyzer.captureAll();
  }

  Future<void> _captureFirstFrame() {
    final completer = Completer();
    flutterWebStartupAnalyzer.markStart('firstFrame');
    _widgetsBinding.addPostFrameCallback((timeStamp) {
      flutterWebStartupAnalyzer.markFinished('firstFrame');
      flutterWebStartupAnalyzer.capture('firstFrame');
      completer.complete();
    });
    return completer.future;
  }

  Future<List<int>> captureFlutterFrameData() async {
    await _frameAnalyzer.captureAdditionalFrames();
    return _frameAnalyzer.additionalFrameTimes;
  }
}
