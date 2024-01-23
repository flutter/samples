// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
external FlutterWebStartupAnalyzer get flutterWebStartupAnalyzer;

@JS()
@staticInterop
class FlutterWebStartupAnalyzer {
  external factory FlutterWebStartupAnalyzer();
}

extension FlutterWebStartupAnalyzerExtensions on FlutterWebStartupAnalyzer {
  external JSObject get timings;
  external void markStart(String name);
  external void markFinished(String name);
  external void capture(String name);
  external void captureAll();
  external void capturePaint();
  external void report();
}
