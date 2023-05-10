import 'package:context_menus/field_types_page.dart';
import 'package:context_menus/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Gives correct behavior for all values of contextMenuBuilder',
    (tester) async {
      await tester.pumpWidget(const MyApp());

      // Navigate to the FieldTypesPage example.
      await tester.dragUntilVisible(
        find.text(FieldTypesPage.title),
        find.byType(ListView),
        const Offset(0.0, -100.0),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text(FieldTypesPage.title));
      await tester.pumpAndSettle();
      expect(
        find.descendant(
          of: find.byType(AppBar),
          matching: find.text(FieldTypesPage.title),
        ),
        findsOneWidget,
      );

      // Right click on the TextField.
      TestGesture gesture = await tester.startGesture(
        tester.getTopLeft(find.byType(TextField)),
        kind: PointerDeviceKind.mouse,
        buttons: kSecondaryMouseButton,
      );
      await tester.pump();
      await gesture.up();
      await gesture.removePointer();
      await tester.pumpAndSettle();

      // The default context menu for the current platform is shown.
      expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          expect(find.byType(CupertinoTextSelectionToolbar), findsOneWidget);
        case TargetPlatform.android:
          expect(find.byType(TextSelectionToolbar), findsOneWidget);
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          expect(find.byType(DesktopTextSelectionToolbar), findsOneWidget);
        case TargetPlatform.macOS:
          expect(find.byType(CupertinoDesktopTextSelectionToolbar),
              findsOneWidget);
      }

      // Tap the next field to hide the context menu.
      await tester.tap(find.byType(EditableText).at(1));
      await tester.pumpAndSettle();
      expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);

      // Right click on the first CupertinoTextField.
      gesture = await tester.startGesture(
        tester.getTopLeft(find.byType(CupertinoTextField).first),
        kind: PointerDeviceKind.mouse,
        buttons: kSecondaryMouseButton,
      );
      await tester.pump();
      await gesture.up();
      await gesture.removePointer();
      await tester.pumpAndSettle();

      // The default Cupertino context menu is shown.
      expect(
          find.byType(CupertinoAdaptiveTextSelectionToolbar), findsOneWidget);
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          expect(find.byType(CupertinoTextSelectionToolbar), findsOneWidget);
        case TargetPlatform.macOS:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          expect(find.byType(CupertinoDesktopTextSelectionToolbar),
              findsOneWidget);
      }

      // Tap the next field to hide the context menu.
      await tester.tap(find.byType(CupertinoTextField).at(1));
      await tester.pumpAndSettle();
      expect(find.byType(CupertinoAdaptiveTextSelectionToolbar), findsNothing);

      // Right click on the fixed CupertinoTextField.
      gesture = await tester.startGesture(
        tester.getTopLeft(find.byType(CupertinoTextField).at(1)),
        kind: PointerDeviceKind.mouse,
        buttons: kSecondaryMouseButton,
      );
      await tester.pump();
      await gesture.up();
      await gesture.removePointer();
      await tester.pumpAndSettle();

      // The default adaptive context menu is shown.
      expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          expect(find.byType(CupertinoTextSelectionToolbar), findsOneWidget);
        case TargetPlatform.android:
          expect(find.byType(TextSelectionToolbar), findsOneWidget);
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          expect(find.byType(DesktopTextSelectionToolbar), findsOneWidget);
        case TargetPlatform.macOS:
          expect(find.byType(CupertinoDesktopTextSelectionToolbar),
              findsOneWidget);
      }

      // Tap the next field to hide the context menu.
      await tester.tap(find.byType(CupertinoTextField).at(2));
      await tester.pumpAndSettle();
      expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);

      // Right click on the forced CupertinoTextField.
      gesture = await tester.startGesture(
        tester.getTopLeft(find.byType(CupertinoTextField).at(2)),
        kind: PointerDeviceKind.mouse,
        buttons: kSecondaryMouseButton,
      );
      await tester.pump();
      await gesture.up();
      await gesture.removePointer();
      await tester.pumpAndSettle();

      // The DesktopTextSelectionToolbar is shown for all platforms.
      expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);
      expect(find.byType(CupertinoAdaptiveTextSelectionToolbar), findsNothing);
      expect(find.byType(DesktopTextSelectionToolbar), findsOneWidget);

      // Tap the next field to hide the context menu.
      await tester.tap(find.byType(EditableText).last);
      await tester.pumpAndSettle();
      expect(find.byType(DesktopTextSelectionToolbar), findsNothing);

      // Right click on the EditableText.
      gesture = await tester.startGesture(
        tester.getTopLeft(find.byType(EditableText).first),
        kind: PointerDeviceKind.mouse,
        buttons: kSecondaryMouseButton,
      );
      await tester.pump();
      await gesture.up();
      await gesture.removePointer();
      await tester.pumpAndSettle();

      // Shows the default context menu.
      expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          expect(find.byType(CupertinoTextSelectionToolbar), findsOneWidget);
        case TargetPlatform.android:
          expect(find.byType(TextSelectionToolbar), findsOneWidget);
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          expect(find.byType(DesktopTextSelectionToolbar), findsOneWidget);
        case TargetPlatform.macOS:
          expect(find.byType(CupertinoDesktopTextSelectionToolbar),
              findsOneWidget);
      }
    },
    variant: TargetPlatformVariant.all(),
  );
}
