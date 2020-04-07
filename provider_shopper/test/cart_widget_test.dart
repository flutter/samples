// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider_shopper/screens/cart.dart';

CartModel cartModel;
CatalogModel catalogModel;
Widget createCartScreen() => MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            catalogModel = catalog;
            cartModel = cart;
            cart.catalog = catalogModel;
            return cart;
          },
        ),
      ],
      child: MaterialApp(
        home: MyCart(),
      ),
    );

void main() {
  group('CartScreen widget tests', () {
    testWidgets('Testing when the cart is empty', (tester) async {
      await tester.pumpWidget(createCartScreen());

      // Testing the layout of the screen widgets
      expect(find.text('Cart'), findsOneWidget);
      expect(find.text('\$0'), findsOneWidget);
      expect(
          find.ancestor(
              of: find.text('BUY'), matching: find.byType(FlatButton)),
          findsOneWidget);
      // verify no snacknar initially
      expect(find.byType(SnackBar), findsNothing);
      await tester.tap(find.text('BUY'));
      // schedule animation
      await tester.pump();
      // verifying the snackbar upon clicking the button
      expect(find.byType(SnackBar), findsOneWidget);
    });

    testWidgets('Testing when the cart contains items', (tester) async {
      await tester.pumpWidget(createCartScreen());

      // Adding five items in the cart and testing
      for (int i = 0; i < 5; i++) {
        var item = catalogModel.getByPosition(i);
        cartModel.add(item);
        await tester.pumpAndSettle();
        expect(find.text(item.name), findsOneWidget);
      }
      // Testing total price of the five items
      expect(find.text('\$${42 * 5}'), findsOneWidget);
      expect(find.byIcon(Icons.done), findsNWidgets(5));
    });
  });
}
