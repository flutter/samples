// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_app/src/http/mock_client.dart';
import 'package:form_app/src/sign_in_http.dart';

void main() {
  testWidgets('sign in', (tester) async {
    await _signIn(tester, 'root', 'password');
    expect(find.text('Unable to sign in.'), findsNothing);
    expect(find.text('Successfully signed in.'), findsOneWidget);
  });

  testWidgets('sign in with bad password', (tester) async {
    await _signIn(tester, 'admin', 'pw');
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text('Unable to sign in.'), findsOneWidget);
    expect(find.text('Successfully signed in.'), findsNothing);
  });
}

Future<void> _signIn(WidgetTester tester, String email, String password) async {
  await tester.pumpWidget(MaterialApp(
    home: SignInHttpDemo(
      httpClient: mockClient,
    ),
  ));

  var textFormField = find.byType(TextFormField);
  expect(textFormField, findsNWidgets(2));

  // Enter email / password
  var emailField = textFormField.at(0);
  var passwordField = textFormField.at(1);
  await tester.enterText(emailField, email);
  await tester.enterText(passwordField, password);

  // Sign in
  var button = find.byType(TextButton);
  expect(button, findsOneWidget);
  await tester.tap(button);

  // Wait for dialog
  await tester.pumpAndSettle();
  expect(find.byType(AlertDialog), findsOneWidget);
}
