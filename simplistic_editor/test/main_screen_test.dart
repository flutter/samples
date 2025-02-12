// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:simplistic_editor/basic_text_input_client.dart';
import 'package:simplistic_editor/main.dart';
import 'package:simplistic_editor/text_editing_delta_history_view.dart';

void main() {
  testWidgets('Default main page shows all components', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Elements on Style ToggleButton Toolbar.
    expect(
      find.widgetWithIcon(ToggleButtons, Icons.format_bold),
      findsOneWidget,
    );
    expect(
      find.widgetWithIcon(ToggleButtons, Icons.format_italic),
      findsOneWidget,
    );
    expect(
      find.widgetWithIcon(ToggleButtons, Icons.format_underline),
      findsOneWidget,
    );

    // Elements on the main screen
    // Delta labels.
    expect(find.widgetWithText(Tooltip, "Delta Type"), findsOneWidget);
    expect(find.widgetWithText(Tooltip, "Delta Text"), findsOneWidget);
    expect(find.widgetWithText(Tooltip, "Delta Offset"), findsOneWidget);
    expect(find.widgetWithText(Tooltip, "New Selection"), findsOneWidget);
    expect(find.widgetWithText(Tooltip, "New Composing"), findsOneWidget);

    // Selection delta is generated and delta history is visible.
    await tester.tap(find.byType(BasicTextInputClient));
    await tester.pumpAndSettle();
    expect(
      find.widgetWithText(TextEditingDeltaView, "NonTextUpdate"),
      findsOneWidget,
    );

    // Find tooltips.
    expect(
      find.byTooltip('The text that is being inserted or deleted'),
      findsOneWidget,
    );
    expect(
      find.byTooltip(
        'The type of text input that is occurring. Check out the documentation for TextEditingDelta for more information.',
      ),
      findsOneWidget,
    );
    expect(
      find.byTooltip(
        'The offset in the text where the text input is occurring.',
      ),
      findsOneWidget,
    );
    expect(
      find.byTooltip(
        'The new text selection range after the text input has occurred.',
      ),
      findsOneWidget,
    );

    // About Dialog
    expect(find.widgetWithIcon(IconButton, Icons.info_outline), findsOneWidget);
    await tester.tap(find.widgetWithIcon(IconButton, Icons.info_outline));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(Center, 'About'), findsOneWidget);
  });
}
