// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider_shopper/screens/catalog.dart';

Widget createCatalogScreen() => MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel.modifyModel(3)),
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

      // Testing for the items on the screen after modifying the model for a fixed number of items.
      for (String item in catalogListItems) {
        expect(find.text(item), findsWidgets);
      }
    });

    testWidgets('Testing the ADD buttons and check after clicking',
        (tester) async {
      await tester.pumpWidget(createCatalogScreen());

      // Should find ADD buttons on the screen.
      expect(find.text('ADD'), findsWidgets);

      // Performing the click on the ADD button of the first item in the list.
      await tester.tap(find.widgetWithText(FlatButton, 'ADD').first);
      await tester.pumpAndSettle();

      // Verifying if the tapped ADD button has changed to the check icon.
      expect(find.byIcon(Icons.check), findsOneWidget);
    });
  });
}
