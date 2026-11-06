// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_module/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyApp smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the list starts with a single entry.
    expect(find.text('Hello from Flutter 0'), findsOneWidget);
    expect(find.text('Hello from Flutter 1'), findsNothing);

    // Tap the button and trigger a frame.
    await tester.tap(find.text('Add to list'));
    await tester.pump();

    // Verify that another entry was added to the list.
    expect(find.text('Hello from Flutter 0'), findsOneWidget);
    expect(find.text('Hello from Flutter 1'), findsOneWidget);
  });
}
