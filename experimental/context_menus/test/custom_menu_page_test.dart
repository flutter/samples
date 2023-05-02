import 'package:context_menus/custom_menu_page.dart';
import 'package:context_menus/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Shows default buttons in a custom context menu', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Navigate to the CustomMenuPage example.
    await tester.dragUntilVisible(
      find.text(CustomMenuPage.title),
      find.byType(ListView),
      const Offset(0.0, -200.0),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(CustomMenuPage.title));
    await tester.pumpAndSettle();

    // Right click on the text field to show the context menu.
    final TestGesture gesture = await tester.startGesture(
      tester.getCenter(find.byType(EditableText)),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture.up();
    await gesture.removePointer();
    await tester.pumpAndSettle();

    // A custom context menu is shown, and the buttons are the default ones.
    expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);
    expect(find.byType(CupertinoAdaptiveTextSelectionToolbar), findsNothing);
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        expect(
            find.byType(CupertinoTextSelectionToolbarButton), findsNWidgets(2));
      case TargetPlatform.macOS:
        expect(find.byType(CupertinoDesktopTextSelectionToolbarButton),
            findsNWidgets(2));
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        expect(find.byType(TextSelectionToolbarTextButton), findsNWidgets(1));
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        expect(
            find.byType(DesktopTextSelectionToolbarButton), findsNWidgets(1));
    }
  });
}
