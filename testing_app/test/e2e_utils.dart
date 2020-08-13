// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// TODO(CareF): This file should be removed after the changes goes into flutter
// stable version.

// ignore linter to keep the code consistent with its duplicate in the framework
// ignore_for_file: use_function_type_syntax_for_parameters, omit_local_variable_types, avoid_types_on_closure_parameters

import 'dart:async';
import 'dart:ui';

import 'package:e2e/e2e.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

/// The maximum amount of time considered safe to spend for a frame's build
/// phase. Anything past that is in the danger of missing the frame as 60FPS.
///
/// Changing this doesn't re-evaluate existing summary.
Duration kBuildBudget = const Duration(milliseconds: 16);

bool _firstRun = true;

const String kDebugWarning = '''
┏╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
┇ ⚠    THIS BENCHMARK IS BEING RUN IN DEBUG MODE     ⚠  ┇
┡╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┦
│                                                       │
│  Numbers obtained from a benchmark while asserts are  │
│  enabled will not accurately reflect the performance  │
│  that will be experienced by end users using release  ╎
│  builds. Benchmarks should be run using this command  ╎
│  line:  "flutter run --profile test.dart" or          ┊
│  or "flutter drive --profile -t test.dart".           ┊
│                                                       ┊
└─────────────────────────────────────────────────╌┄┈  🐢
''';

/// watches the [FrameTiming] of `action` and report it to the e2e binding.
Future<void> watchPerformance(
  E2EWidgetsFlutterBinding binding,
  Future<void> action(), {
  String reportKey = 'performance',
}) async {
  assert(() {
    if (_firstRun) {
      debugPrint(kDebugWarning);
      _firstRun = false;
    }
    return true;
  }());
  final List<FrameTiming> frameTimings = <FrameTiming>[];
  final TimingsCallback watcher = frameTimings.addAll;
  binding.addTimingsCallback(watcher);
  await action();
  binding.removeTimingsCallback(watcher);
  final FrameTimingSummarizer frameTimes = FrameTimingSummarizer(frameTimings);
  binding.reportData = <String, dynamic>{reportKey: frameTimes.summary};
}

/// This class and summarizes a list of [FrameTiming] for the performance
/// metrics.
class FrameTimingSummarizer {
  factory FrameTimingSummarizer(List<FrameTiming> data) {
    assert(data != null);
    assert(data.isNotEmpty);
    final List<Duration> frameBuildTime = List<Duration>.unmodifiable(
      data.map<Duration>((FrameTiming datum) => datum.buildDuration),
    );
    final List<Duration> frameBuildTimeSorted =
        List<Duration>.from(frameBuildTime)..sort();
    final List<Duration> frameRasterizerTime = List<Duration>.unmodifiable(
      data.map<Duration>((FrameTiming datum) => datum.rasterDuration),
    );
    final List<Duration> frameRasterizerTimeSorted =
        List<Duration>.from(frameRasterizerTime)..sort();
    final Duration Function(Duration, Duration) add =
        (Duration a, Duration b) => a + b;
    return FrameTimingSummarizer._(
      frameBuildTime: frameBuildTime,
      frameRasterizerTime: frameRasterizerTime,
      // This avarage calculation is microsecond precision, which is fine
      // because typical values of these times are milliseconds.
      averageFrameBuildTime: frameBuildTime.reduce(add) ~/ data.length,
      p90FrameBuildTime: _findPercentile(frameBuildTimeSorted, 0.90),
      p99FrameBuildTime: _findPercentile(frameBuildTimeSorted, 0.99),
      worstFrameBuildTime: frameBuildTimeSorted.last,
      missedFrameBuildBudget: _countExceed(frameBuildTimeSorted, kBuildBudget),
      averageFrameRasterizerTime:
          frameRasterizerTime.reduce(add) ~/ data.length,
      p90FrameRasterizerTime: _findPercentile(frameRasterizerTimeSorted, 0.90),
      p99FrameRasterizerTime: _findPercentile(frameRasterizerTimeSorted, 0.90),
      worstFrameRasterizerTime: frameRasterizerTimeSorted.last,
      missedFrameRasterizerBudget:
          _countExceed(frameRasterizerTimeSorted, kBuildBudget),
    );
  }

  const FrameTimingSummarizer._(
      {@required this.frameBuildTime,
      @required this.frameRasterizerTime,
      @required this.averageFrameBuildTime,
      @required this.p90FrameBuildTime,
      @required this.p99FrameBuildTime,
      @required this.worstFrameBuildTime,
      @required this.missedFrameBuildBudget,
      @required this.averageFrameRasterizerTime,
      @required this.p90FrameRasterizerTime,
      @required this.p99FrameRasterizerTime,
      @required this.worstFrameRasterizerTime,
      @required this.missedFrameRasterizerBudget});

  /// List of frame build time in microseconds
  final List<Duration> frameBuildTime;

  /// List of frame rasterizer time in microseconds
  final List<Duration> frameRasterizerTime;

  /// The average value of [frameBuildTime] in milliseconds.
  final Duration averageFrameBuildTime;

  /// The 90-th percentile value of [frameBuildTime] in milliseconds
  final Duration p90FrameBuildTime;

  /// The 99-th percentile value of [frameBuildTime] in milliseconds
  final Duration p99FrameBuildTime;

  /// The largest value of [frameBuildTime] in milliseconds
  final Duration worstFrameBuildTime;

  /// Number of items in [frameBuildTime] that's greater than [kBuildBudget]
  final int missedFrameBuildBudget;

  /// The average value of [frameRasterizerTime] in milliseconds.
  final Duration averageFrameRasterizerTime;

  /// The 90-th percentile value of [frameRasterizerTime] in milliseconds.
  final Duration p90FrameRasterizerTime;

  /// The 99-th percentile value of [frameRasterizerTime] in milliseconds.
  final Duration p99FrameRasterizerTime;

  /// The largest value of [frameRasterizerTime] in milliseconds.
  final Duration worstFrameRasterizerTime;

  /// Number of items in [frameRasterizerTime] that's greater than [kBuildBudget]
  final int missedFrameRasterizerBudget;

  Map<String, dynamic> get summary => <String, dynamic>{
        'average_frame_build_time_millis':
            averageFrameBuildTime.inMicroseconds / 1E3,
        '90th_percentile_frame_build_time_millis':
            p90FrameBuildTime.inMicroseconds / 1E3,
        '99th_percentile_frame_build_time_millis':
            p99FrameBuildTime.inMicroseconds / 1E3,
        'worst_frame_build_time_millis':
            worstFrameBuildTime.inMicroseconds / 1E3,
        'missed_frame_build_budget_count': missedFrameBuildBudget,
        'average_frame_rasterizer_time_millis':
            averageFrameRasterizerTime.inMicroseconds / 1E3,
        '90th_percentile_frame_rasterizer_time_millis':
            p90FrameRasterizerTime.inMicroseconds / 1E3,
        '99th_percentile_frame_rasterizer_time_millis':
            p99FrameRasterizerTime.inMicroseconds / 1E3,
        'worst_frame_rasterizer_time_millis':
            worstFrameRasterizerTime.inMicroseconds / 1E3,
        'missed_frame_rasterizer_budget_count': missedFrameRasterizerBudget,
        'frame_count': frameBuildTime.length,
        'frame_build_times': frameBuildTime
            .map<int>((Duration datum) => datum.inMicroseconds)
            .toList(),
        'frame_rasterizer_times': frameRasterizerTime
            .map<int>((Duration datum) => datum.inMicroseconds)
            .toList(),
      };
}

// The following helper functions require data sorted

// return the 100*p-th percentile of the data
T _findPercentile<T>(List<T> data, double p) {
  assert(p >= 0 && p <= 1);
  return data[((data.length - 1) * p).round()];
}

// return the number of items in data that > threshold
int _countExceed<T extends Comparable<T>>(List<T> data, T threshold) {
  return data.length -
      data.indexWhere((T datum) => datum.compareTo(threshold) > 0);
}
