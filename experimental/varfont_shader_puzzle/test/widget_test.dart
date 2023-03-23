// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';

import 'package:varfont_shader_puzzle/main.dart';

void main() {
  const welcomeText =
      'Welcome to your first day on the FontCo team! Are you ready to help us publish our newest font, Designer Pro?';
  const welcomeTextStep2 =
      'Oh no, you clicked the button too hard! Now the font file is glitched. Help us put the letters back together so we can launch!';

  testWidgets('Initial display', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TypePuzzle());

    // Verify intro text
    expect(find.text(welcomeText), findsOneWidget);
    expect(find.text(welcomeTextStep2), findsNothing);

    // Verify OK button
    expect(find.text('OK'), findsOneWidget);
  });
}
