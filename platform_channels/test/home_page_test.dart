// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:platform_channels/main.dart';

void main() {
  group('HomePage tests', () {
    testWidgets('HomePage has multiple Text widgets', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: HomePage(),
      ));

      expect(find.byType(Text), findsWidgets);
    });
  });
}
