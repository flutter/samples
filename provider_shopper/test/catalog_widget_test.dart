// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider_shopper/screens/catalog.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  List<SingleChildCloneableWidget> _providers = [
    Provider(create: (context) => CatalogModel()),
    ChangeNotifierProxyProvider<CatalogModel, CartModel>(
      create: (context) => CartModel(),
      update: (context, catalog, cart) {
        cart.catalog = catalog;
        return cart;
      },
    ),
  ];
  final catalogListItems = CatalogModel.itemNames;

  group('Catalog page widgets layout', () {
    testWidgets('Testing the layout and presentation of widgets',
        (tester) async {
      await tester.pumpWidget(MultiProvider(
        providers: _providers,
        child: MaterialApp(
          home: MyCatalog(),
        ),
      ));

      // Verifying the layout
      expect(find.byType(CustomScrollView), findsOneWidget);
      expect(find.text('Catalog'), findsOneWidget);
      expect(find.byIcon(Icons.shopping_cart), findsOneWidget);
      expect(
          find.ancestor(
              of: find.text('Catalog'), matching: find.byType(SliverAppBar)),
          findsOneWidget);
      expect(find.byType(SliverToBoxAdapter), findsOneWidget);
      expect(find.byType(SliverList), findsOneWidget);
    });
  });

  group('Testing the scrolling behaviour of the page', () {
    testWidgets('Testing only the the scroll functionality', (tester) async {
      await tester.pumpWidget(MultiProvider(
        providers: _providers,
        child: MaterialApp(
          home: MyCatalog(),
        ),
      ));
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
  });

  group('Catalog page items rendering test on screen without scroll', () {
    testWidgets('Testing the behaviour of the list items in Catalog page',
        (tester) async {
      await tester.pumpWidget(MultiProvider(
        providers: _providers,
        child: MaterialApp(
          home: MyCatalog(),
        ),
      ));

      // Testing for the first N(9) items which appear on the screen at first
      // according to the base viewport
      for (String item in catalogListItems.sublist(0, 9)) {
        expect(find.text(item), findsOneWidget);
        expect(
            find.ancestor(of: find.text(item), matching: find.byType(Expanded)),
            findsOneWidget);
      }
    });
  });

  group('Catalog page items rendering test on screen after scroll', () {
    testWidgets('Testing layout of remaining items after a scrollup',
        (tester) async {
      await tester.pumpWidget(MultiProvider(
        providers: _providers,
        child: MaterialApp(
          home: MyCatalog(),
        ),
      ));

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
  });
  group('Testing the ADD buttons and check after clicking', () {
    testWidgets('Testing the ADD buttons and check icon after clicking one',
        (tester) async {
      await tester.pumpWidget(MultiProvider(
        providers: _providers,
        child: MaterialApp(
          home: MyCatalog(),
        ),
      ));

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
