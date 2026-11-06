// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_module_content_resizing/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ResizeApp grows its list when the button is tapped', (
    tester,
  ) async {
    await tester.pumpWidget(const ResizeApp());

    // The list starts with a single widget.
    expect(find.text('Flutter Widget 0'), findsOneWidget);
    expect(find.text('Flutter Widget 1'), findsNothing);

    await tester.tap(find.text('Listception!'));
    await tester.pump();

    // Tapping appends to the list rather than replacing it, so the original
    // entry is still on screen. This growth is what the host UIView observes
    // through its intrinsicContentSize.
    expect(find.text('Flutter Widget 0'), findsOneWidget);
    expect(find.text('Flutter Widget 1'), findsOneWidget);
  });
}
