// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:platform_design/main.dart';

void main() {
  group('Platform tests', () {
    testWidgets('Builds for Android correctly', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      await tester.pumpWidget(const MyAdaptingApp());

      // The test should be able to find the drawer button.
      expect(find.byIcon(Icons.menu), findsOneWidget);
      // There should be a refresh button.
      expect(find.byIcon(Icons.refresh), findsOneWidget);

      // Since this is a static, undo any change made in the test.
      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('Builds for iOS correctly', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      await tester.pumpWidget(const MyAdaptingApp());

      // There should now be a large title style nav bar.
      expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
      // There's a tab button for the first tab.
      expect(find.byIcon(CupertinoIcons.music_note), findsOneWidget);
      // The hamburger button isn't there anymore.
      expect(find.byIcon(Icons.menu), findsNothing);

      // Since this is a static, undo any change made in the test.
      debugDefaultTargetPlatformOverride = null;
    });
  });
}
