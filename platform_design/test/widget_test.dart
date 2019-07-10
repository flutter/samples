import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:platform_design/main.dart';

void main() {
  testWidgets('Can change platform correctly', (tester) async {
    await tester.pumpWidget(MyAdaptingApp());

    // The test should be able to find the drawer button.
    expect(find.byIcon(Icons.menu), findsOneWidget);
    // There should be a refresh button.
    expect(find.byIcon(Icons.refresh), findsOneWidget);

    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    await tester.pumpWidget(MyAdaptingApp());

    // There should now be a large title style nav bar.
    expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
    // There's a tab button for the first tab.
    expect(find.byIcon(CupertinoIcons.music_note), findsOneWidget);
    // The hamburger button isn't there anymore.
    expect(find.byIcon(Icons.menu), findsNothing);

    // Since this is a static, undo the change made in the test.
    debugDefaultTargetPlatformOverride = null;
  });
}
