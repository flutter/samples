// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider_shopper/screens/catalog.dart';

Widget createCatalogScreen() => MultiProvider(
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
        home: MyCatalog(),
      ),
    );

void main() {
  final catalogListItems = CatalogModel.itemNames;

  group('CatalogScreen Widget Tests', () {
    testWidgets('Testing the layout and presentation of widgets',
        (tester) async {
      await tester.pumpWidget(createCatalogScreen());

      // Verifying the layout
      expect(find.text('Catalog'), findsOneWidget);
      expect(find.byIcon(Icons.shopping_cart), findsOneWidget);

      // Testing for the first N(9) items which appear on the screen at first
      // according to the base viewport
      for (String item in catalogListItems.sublist(0, 9)) {
        expect(find.text(item), findsOneWidget);
      }
    });

    testWidgets('Testing the scroll behaviour', (tester) async {
      await tester.pumpWidget(createCatalogScreen());
      // Perform Scroll Up
      await tester.drag(
          find.byType(CustomScrollView), const Offset(0.0, -360.0));
      await tester.pumpAndSettle();

      // Once scroll up is performed, we should not be able to find Catalog
      expect(find.text('Catalog'), findsNothing);

      // Perform Scroll down
      await tester.drag(
          find.byType(CustomScrollView), const Offset(0.0, 360.0));
      await tester.pumpAndSettle();

      // Once scroll down is performed, we should be able to find Catalog
      expect(find.text('Catalog'), findsOneWidget);
    });

    testWidgets('Testing layout of remaining items after a scrollup',
        (tester) async {
      await tester.pumpWidget(createCatalogScreen());

      // Performing the scroll
      await tester.drag(
          find.byType(CustomScrollView), const Offset(0.0, -380.0));
      await tester.pumpAndSettle();

      // Testing for the remaing items from the list in the screen
      for (String item
          in catalogListItems.sublist(9, catalogListItems.length)) {
        expect(find.text(item), findsOneWidget);
        expect(
            find.ancestor(of: find.text(item), matching: find.byType(Expanded)),
            findsOneWidget);
      }
    });

    testWidgets('Testing the ADD buttons and check after clicking',
        (tester) async {
      await tester.pumpWidget(createCatalogScreen());

      // Should find 9 buttons(since 9 items) at the current/base viewport height.
      expect(find.text('ADD'), findsNWidgets(9));

      // Performing the click on the ADD button of the first item in the list
      await tester.tap(find.widgetWithText(FlatButton, 'ADD').first);
      await tester.pumpAndSettle();

      // Verifying if the tapped ADD button has changed to the check icon
      expect(find.byIcon(Icons.check), findsOneWidget);
    });
  });
}
