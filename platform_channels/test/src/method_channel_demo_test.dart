// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/src/method_channel_demo.dart';

void main() {
  group('MethodChannelDemo tests', () {
    testWidgets('MethodChannelDemo has two FloatingActionButton',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: MethodChannelDemo(),
      ));

      expect(find.byType(FloatingActionButton), findsNWidgets(2));
    });
  });
}
