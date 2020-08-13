// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// This file duplicates the behavior of test_driver/perf_test.dart, but uses
// the e2e package to implement a host-independent test.

import 'dart:convert' show JsonEncoder;

import 'package:e2e/e2e.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/main.dart' as app;

import 'e2e_utils.dart';

void main() {
  final binding =
      E2EWidgetsFlutterBinding.ensureInitialized() as E2EWidgetsFlutterBinding;
  // The fullyLive frame policy simulates the way Flutter response to animations.
  // See https://github.com/flutter/flutter/issues/60237
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  group('Testing App Performance Tests on e2e', () {
    testWidgets('Scrolling test', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await watchPerformance(binding, () async {
        final listFinder = find.byType(ListView);
        final scroller = tester.widget<ListView>(listFinder).controller;
        await scroller.animateTo(
          7000,
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
        );
        await tester.pumpAndSettle();

        await scroller.animateTo(
          -7000,
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
        );
        await tester.pumpAndSettle();
      }, reportKey: 'scrolling');
      // The performance result is reported to `data['scrolling']`.
      // See `e2e_test.dart` for detail.
      print('scrolling performance test result:');
      print(JsonEncoder.withIndent('  ')
          .convert(binding.reportData['scrolling']));
    }, semanticsEnabled: false);

    testWidgets('Favorites operations test', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await watchPerformance(binding, () async {
        final iconKeys = [
          'icon_0',
          'icon_1',
          'icon_2',
        ];
        for (var icon in iconKeys) {
          await tester.tap(find.byKey(ValueKey<String>(icon)));
          await tester.pumpAndSettle();
        }

        await tester.tap(find.text('Favorites'));
        await tester.pumpAndSettle();

        final removeIconKeys = [
          'remove_icon_0',
          'remove_icon_1',
          'remove_icon_2',
        ];

        for (final iconKey in removeIconKeys) {
          await tester.tap(find.byKey(ValueKey<String>(iconKey)));
          await tester.pumpAndSettle();
        }
      }, reportKey: 'favorites_operations');
      // The performance result is reported to `data['favorites_operations']`.
      // See `e2e_test.dart` for detail.
      print('favorites_operations performance test result:');
      print(JsonEncoder.withIndent('  ')
          .convert(binding.reportData['favorites_operations']));
    }, semanticsEnabled: false);
  });
}
