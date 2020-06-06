// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/src/method_channel_demo.dart';

void main() {
  group('MethodChannelDemo tests', () {
    setUpAll(() {
      final methodChannel = MethodChannel('methodChannelDemo');

      // Register a mock MethodCallHandler.
      methodChannel.setMockMethodCallHandler((call) async {
        var count = call.arguments['count'] as int;
        if (call.method == 'increment') {
          return ++count;
        } else if (call.method == 'decrement') {
          return --count;
        }

        return MissingPluginException();
      });
    });

    testWidgets('MethodChannelDemo count test', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: MethodChannelDemo(),
      ));

      // Initially the value of count should be 0.
      expect(find.text('Value of count is 0'), findsOneWidget);

      // Tap the RaisedButton with Icons.add to increment the value of count.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('Value of count is 1'), findsOneWidget);

      // Tap the RaisedButton with Icons.remove to decrement the value of count.
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      expect(find.text('Value of count is 0'), findsOneWidget);
    });
  });
}
