// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'web_startup_analyzer_base.dart';

// This class is a stub so that unit tests can run without importing
// dart:js_interop and related packages.
class WebStartupAnalyzer extends WebStartupAnalyzerBase {
  WebStartupAnalyzer({int additionalFrameCount = 0});

  @override
  List<int>? get additionalFrames => [];

  @override
  double get appRunnerRunApp => 0.0;

  @override
  double get domContentLoaded => 0.0;

  @override
  double? get firstContentfulPaint => 0.0;

  @override
  double? get firstFrame => 0.0;

  @override
  double? get firstPaint => 0.0;

  @override
  double get initializeEngine => 0.0;

  @override
  double get loadEntrypoint => 0.0;

  @override
  Map<String, dynamic> get startupTiming => {};
}
