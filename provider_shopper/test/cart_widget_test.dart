// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider_shopper/screens/cart.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Widget cartScreen() => MultiProvider(
        providers: [
          Provider(create: (context) => CatalogModel()),
          ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart) {
              cart.catalog = catalog;
              return cart;
            },
          ),
        ],
        child: MaterialApp(
          home: MyCart(),
        ),
      );
  group('Cart Screen basic widget testing', () {
    testWidgets('Testing the layout of the widgets', (tester) async {
      await tester.pumpWidget(cartScreen());

      // Testing the layout of the screen widgets
      expect(find.text('Cart'), findsOneWidget);
      expect(find.byType(Divider), findsOneWidget);
      expect(
          find.ancestor(
              of: find.byType(Divider), matching: find.byType(Column)),
          findsOneWidget);
      WidgetPredicate cartTotalPredicate =
          (widget) => widget is SizedBox && widget.height == 200;
      expect(find.byWidgetPredicate(cartTotalPredicate), findsOneWidget);
      expect(find.text('\$0'), findsOneWidget);
      expect(find.text('BUY'), findsOneWidget);
    });
  });

  group('Widget Testing for the BUY button click and Snackbar', () {
    testWidgets('Testing the button tap and snackbar', (tester) async {
      final snackbarMessage = 'Buying not supported yet.';

      await tester.pumpWidget(cartScreen());

      expect(
          find.ancestor(
              of: find.text('BUY'), matching: find.byType(FlatButton)),
          findsOneWidget);
      // verify no snacknar initially
      expect(find.text(snackbarMessage), findsNothing);
      await tester.tap(find.text('BUY'));
      // schedule animation
      await tester.pump();
      // verifying the snackbar upon clicking the button
      expect(find.text(snackbarMessage), findsOneWidget);
    });
  });
}
