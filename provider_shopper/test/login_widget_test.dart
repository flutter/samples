// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider_shopper/screens/login.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Login page Widget test', (tester) async {
    await tester.pumpWidget(MaterialApp(home: MyLogin()));

    // Testing the layout and positioning of the screen widgets
    WidgetPredicate parentWidetPredicate = (widget) =>
        widget is Container && widget.padding == EdgeInsets.all(80.0);
    expect(find.byWidgetPredicate(parentWidetPredicate), findsOneWidget);
    expect(find.text('Welcome'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));

    final usernameFinder = find.widgetWithText(TextFormField, 'Username');
    final passwordFinder = find.widgetWithText(TextFormField, 'Password');
    expect(usernameFinder, findsOneWidget);
    expect(passwordFinder, findsOneWidget);

    // Testing data input from user
    await tester.enterText(usernameFinder, '@username');
    await tester.enterText(passwordFinder, 'password');

    // Verifying the presence and layout of ENTER button
    final enterBtnFinder = find.widgetWithText(RaisedButton, 'ENTER');
    expect(enterBtnFinder, findsOneWidget);
  });
}
