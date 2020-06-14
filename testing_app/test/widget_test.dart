// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing_app/main.dart';

void main() {
  testWidgets('Smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TestingApp());

    // Verify that a ListView shows up.
    expect(find.byType(ListView), findsOneWidget);
  });
}
