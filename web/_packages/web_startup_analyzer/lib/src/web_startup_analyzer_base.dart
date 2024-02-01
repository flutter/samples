// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';

// Base class for the web (real) implementation and dart:io (stub)
// implementation.
abstract class WebStartupAnalyzerBase {
  late final Listenable onChange;
  ValueNotifier<double?> onFirstFrame = ValueNotifier(null);
  ValueNotifier<(double, double)?> onFirstPaint = ValueNotifier(null);
  ValueNotifier<List<int>?> onAdditionalFrames = ValueNotifier(null);

  double get domContentLoaded;
  double get loadEntrypoint;
  double get initializeEngine;
  double get appRunnerRunApp;
  double? get firstFrame;
  double? get firstPaint;
  double? get firstContentfulPaint;
  List<int>? get additionalFrames;

  Map<String, dynamic> get startupTiming;
}
