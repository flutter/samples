// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:Shrine/app.dart';
import 'package:Shrine/model/app_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  testWidgets("smoke test", (tester) async {
    AppStateModel model = AppStateModel();
    model.loadProducts();

    await tester.pumpWidget(ScopedModel<AppStateModel>(
      model: model,
      child: ShrineApp(),
    ));

    // Click through from the login screen.
    await tester.tap(find.text("NEXT"));
    await tester.pump();

    // Ensure we populate the catalog page.
    expect(find.text("Stella sunglasses"), findsOneWidget);
    expect(find.text(r"$58"), findsOneWidget);

    // Buy a product.
    await tester.tap(find.text("Stella sunglasses"));
    await tester.pump();

    // Go to the shopping cart.
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pumpAndSettle();

    // Ensure that it appears, and that it computes total with tax and shipping.
    expect(find.text("Subtotal:"), findsOneWidget);
    expect(find.text(r"$68.48"), findsOneWidget);
  });
}
