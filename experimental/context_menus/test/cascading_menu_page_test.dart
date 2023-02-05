import 'package:context_menus/cascading_menu_page.dart';
import 'package:context_menus/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Can show and use the cascading menu', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Navigate to the CascadingMenuPage example.
    await tester.dragUntilVisible(
      find.text(CascadingMenuPage.title),
      find.byType(ListView),
      const Offset(0.0, -250.0),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(CascadingMenuPage.title));
    await tester.pumpAndSettle();

    const String message =
        'Right click or long press anywhere to show the cascading menu.';
    expect(find.text(message), findsOneWidget);

    // Right click on the background of the app to show the cascading context
    // menu.
    TestGesture gesture = await tester.startGesture(
      const Offset(0.0, 100.0),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture.up();
    await gesture.removePointer();
    await tester.pumpAndSettle();

    // The custom cascading context menu is shown.
    expect(find.byType(DesktopTextSelectionToolbar), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Show'), findsNothing);
    expect(find.text('Hide'), findsOneWidget);
    expect(find.text('Reset'), findsOneWidget);
    expect(find.text('Color'), findsOneWidget);

    // Click "Hide Message" and the message and menu are hidden.
    await tester.tap(find.text('Hide'));
    await tester.pumpAndSettle();
    expect(find.byType(DesktopTextSelectionToolbar), findsNothing);
    expect(find.text(message), findsNothing);

    // Right click to show the menu again.
    gesture = await tester.startGesture(
      const Offset(0.0, 100.0),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture.up();
    await gesture.removePointer();
    await tester.pumpAndSettle();
    expect(find.byType(DesktopTextSelectionToolbar), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Show'), findsOneWidget);
    expect(find.text('Hide'), findsNothing);
    expect(find.text('Reset'), findsOneWidget);
    expect(find.text('Color'), findsOneWidget);

    // Use the shortcut to show the message again.
    await tester.sendKeyDownEvent(LogicalKeyboardKey.control);
    await tester.sendKeyDownEvent(LogicalKeyboardKey.keyS);
    await tester.sendKeyUpEvent(LogicalKeyboardKey.control);
    await tester.sendKeyUpEvent(LogicalKeyboardKey.keyS);
    await tester.pumpAndSettle();
    expect(find.byType(DesktopTextSelectionToolbar), findsNothing);
    expect(find.text(message), findsOneWidget);

    // Right click to show the menu again.
    gesture = await tester.startGesture(
      const Offset(0.0, 100.0),
      kind: PointerDeviceKind.mouse,
      buttons: kSecondaryMouseButton,
    );
    await tester.pump();
    await gesture.up();
    await gesture.removePointer();
    await tester.pumpAndSettle();
    expect(find.byType(DesktopTextSelectionToolbar), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Show'), findsNothing);
    expect(find.text('Hide'), findsOneWidget);
    expect(find.text('Reset'), findsOneWidget);
    expect(find.text('Color'), findsOneWidget);
    expect(find.text('Red'), findsNothing);
    expect(find.text('Green'), findsNothing);
    expect(find.text('Blue'), findsNothing);

    // Hover Background Color.
    gesture = await tester.startGesture(
      //tester.getCenter(find.text('Color')),
      const Offset(0.0, 100),
      kind: PointerDeviceKind.mouse,
    );
    await tester.pump();
    await gesture.moveTo(tester.getCenter(find.text('Color')));
    await tester.pumpAndSettle();

    // Background colors are shown.
    expect(find.text('Red'), findsOneWidget);
    expect(find.text('Green'), findsOneWidget);
    expect(find.text('Blue'), findsOneWidget);

    // Select green.
    await gesture.moveTo(tester.getCenter(find.text('Green')));
    await tester.pump();
    await tester.tap(find.text('Green'));
    await tester.pump();
    await gesture.removePointer();

    // The menu is gone and the UI shows green was selected.
    expect(find.byType(DesktopTextSelectionToolbar), findsNothing);
    expect(find.text('Last Selected: Green Background'), findsOneWidget);
  });
}
