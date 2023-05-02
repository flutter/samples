import 'package:context_menus/email_button_page.dart';
import 'package:context_menus/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils.dart';

void main() {
  testWidgets('Selecting the email address shows a custom button',
      (tester) async {
    await tester.pumpWidget(const MyApp());

    // Navigate to the EmailButtonPage example.
    await tester.dragUntilVisible(
      find.text(EmailButtonPage.title),
      find.byType(ListView),
      const Offset(0.0, -100.0),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(EmailButtonPage.title));
    await tester.pumpAndSettle();

    // Select the first word, then right click to show the context menu.
    expect(find.byType(TextField), findsOneWidget);
    await tester.tapAt(tester.getTopLeft(find.byType(EditableText)));
    await tester.pumpAndSettle();
    await tester.sendKeyDownEvent(LogicalKeyboardKey.shift);
    for (int i = 0; i < 6; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    }
    await tester.sendKeyUpEvent(LogicalKeyboardKey.shift);
    await tester.pumpAndSettle();
    final TestGesture gesture1 = await tester.startGesture(
      textOffsetToPosition(tester, 4),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture1.up();
    await gesture1.removePointer();
    await tester.pumpAndSettle();

    // The context menu is shown, but no email button appears.
    expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
    expect(find.text('Send email'), findsNothing);
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        expect(
            find.byType(CupertinoTextSelectionToolbarButton), findsNWidgets(2));
      case TargetPlatform.macOS:
        expect(find.byType(CupertinoDesktopTextSelectionToolbarButton),
            findsNWidgets(2));
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        expect(find.byType(TextSelectionToolbarTextButton), findsNWidgets(3));
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        expect(
            find.byType(DesktopTextSelectionToolbarButton), findsNWidgets(3));
    }

    // Click on "Copy" to hide the context menu.
    await tester.tap(find.text('Copy'));
    await tester.pumpAndSettle();
    expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);

    // Select the email address, then right click it to show the context menu.
    for (int i = 0; i < 38; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    }
    await tester.pumpAndSettle();
    await tester.sendKeyDownEvent(LogicalKeyboardKey.shift);
    for (int i = 0; i < 15; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    }
    await tester.sendKeyUpEvent(LogicalKeyboardKey.shift);
    final TestGesture gesture2 = await tester.startGesture(
      textOffsetToPosition(tester, 48),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture2.up();
    await gesture2.removePointer();
    await tester.pumpAndSettle();

    // The context menu is shown, and the email button now appears.
    expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
    expect(find.text('Send email'), findsOneWidget);
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        expect(
            find.byType(CupertinoTextSelectionToolbarButton), findsNWidgets(3));
      case TargetPlatform.macOS:
        expect(find.byType(CupertinoDesktopTextSelectionToolbarButton),
            findsNWidgets(3));
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        expect(find.byType(TextSelectionToolbarTextButton), findsNWidgets(4));
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        expect(
            find.byType(DesktopTextSelectionToolbarButton), findsNWidgets(4));
    }
  });
}
