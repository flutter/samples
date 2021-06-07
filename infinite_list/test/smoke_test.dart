// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:infinitelist/main.dart';

void main() {
  testWidgets('Infinite list smoke test', (tester) async {
    await tester.pumpWidget(const MyApp());

    const loadingDuration = Duration(milliseconds: 500);

    // At first, the catalog shows only "..." (loading items).
    expect(find.text('...'), findsWidgets);
    expect(find.text('Color #1'), findsNothing);

    await tester.pump(loadingDuration);

    // After the app has had a chance to load items, it should no longer
    // show "...".
    expect(find.text('...'), findsNothing);
    expect(find.text('Color #1'), findsOneWidget);

    // Flinging up quickly (i.e. scrolling down).
    await tester.fling(find.byType(ListView), const Offset(0, -2000), 5000);

    // As we scroll down, we should see more items loading.
    expect(find.text('...'), findsWidgets);
    // The item at the top should no longer be in view.
    expect(find.text('Color #1'), findsNothing);

    // This last part is just giving the app time to complete its "fetch"
    // of new items. Otherwise, the test fails because of outstanding
    // asynchronous callbacks.
    await tester.pump(loadingDuration);
  });
}
