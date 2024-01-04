import 'package:context_menus/default_values_page.dart';
import 'package:context_menus/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Gives correct behavior for all values of contextMenuBuilder',
      (tester) async {
    await tester.pumpWidget(const MyApp());

    // Navigate to the DefaultValuesPage example.
    await tester.dragUntilVisible(
      find.text(DefaultValuesPage.title),
      find.byType(ListView),
      const Offset(0.0, -100.0),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(DefaultValuesPage.title));
    await tester.pumpAndSettle();
    expect(
      find.descendant(
        of: find.byType(AppBar),
        matching: find.text(DefaultValuesPage.title),
      ),
      findsOneWidget,
    );

    // Right click on the text field where contextMenuBuilder isn't passed.
    TestGesture gesture = await tester.startGesture(
      tester.getCenter(find.byType(EditableText).first),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture.up();
    await gesture.removePointer();
    await tester.pumpAndSettle();

    // The default context menu is shown.
    expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
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

    // Tap the next field to hide the context menu.
    await tester.tap(find.byType(EditableText).at(1));
    await tester.pumpAndSettle();
    expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);

    // Right click on the text field where contextMenuBuilder is given null.
    gesture = await tester.startGesture(
      tester.getCenter(find.byType(EditableText).at(1)),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture.up();
    await gesture.removePointer();
    await tester.pumpAndSettle();

    // No context menu is shown.
    expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);

    // Tap the next field to hide the context menu.
    await tester.tap(find.byType(EditableText).at(2));
    await tester.pumpAndSettle();
    expect(find.byType(AdaptiveTextSelectionToolbar), findsNothing);

    // Right click on the text field with the custom contextMenuBuilder.
    gesture = await tester.startGesture(
      tester.getCenter(find.byType(EditableText).at(2)),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture.up();
    await gesture.removePointer();
    await tester.pumpAndSettle();

    // The custom context menu is shown.
    expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
    expect(find.text('Custom button'), findsOneWidget);
  });
}
