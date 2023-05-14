import 'package:context_menus/custom_buttons_page.dart';
import 'package:context_menus/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Shows custom buttons in the built-in context menu',
      (tester) async {
    await tester.pumpWidget(const MyApp());

    // Navigate to the CustomButtonsPage example.
    await tester.dragUntilVisible(
      find.text(CustomButtonsPage.title),
      find.byType(ListView),
      const Offset(0.0, -100.0),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(CustomButtonsPage.title));
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

    // The context menu is shown, and the buttons are custom widgets.
    expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        expect(find.byType(CupertinoTextSelectionToolbarButton), findsNothing);
        expect(find.byType(CupertinoButton), findsNWidgets(2));
      case TargetPlatform.macOS:
        expect(find.byType(CupertinoButton), findsNWidgets(2));
        expect(find.byType(CupertinoDesktopTextSelectionToolbarButton),
            findsNothing);
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        expect(find.byType(CupertinoButton), findsNWidgets(1));
        expect(find.byType(TextSelectionToolbarTextButton), findsNothing);
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        expect(find.byType(CupertinoButton), findsNWidgets(1));
        expect(find.byType(DesktopTextSelectionToolbarButton), findsNothing);
    }
  });
}
