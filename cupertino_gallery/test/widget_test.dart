// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cupertino_gallery/main.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('starts on the Widgets tab', (tester) async {
    await tester.pumpWidget(const CupertinoGalleryApp());
    await tester.pumpAndSettle();

    expect(find.byType(CupertinoTabScaffold), findsOneWidget);
    expect(find.text('Widgets'), findsWidgets);
  });

  testWidgets('switches to the Settings tab', (tester) async {
    await tester.pumpWidget(const CupertinoGalleryApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();

    expect(find.byType(CupertinoListSection), findsWidgets);
  });
}
