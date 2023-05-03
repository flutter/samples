// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/src/method_channel_demo.dart';

void main() {
  group('MethodChannelDemo tests', () {
    testWidgets('MethodChannelDemo count test', (tester) async {
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        const MethodChannel('methodChannelDemo'),
        (call) async {
          var count = call.arguments['count'] as int;
          if (call.method == 'increment') {
            return ++count;
          } else if (call.method == 'decrement') {
            return --count;
          }

          return MissingPluginException();
        },
      );
      await tester.pumpWidget(const MaterialApp(
        home: MethodChannelDemo(),
      ));

      // Initially the value of count should be 0.
      expect(find.text('Value of count is 0'), findsOneWidget);

      // Tap the ElevatedButton with Icons.add to increment the value of count.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('Value of count is 1'), findsOneWidget);

      // Tap the ElevatedButton with Icons.remove to decrement the value of count.
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      expect(find.text('Value of count is 0'), findsOneWidget);
    });
  });
}
