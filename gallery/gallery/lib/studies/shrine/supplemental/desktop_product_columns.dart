// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:gallery/studies/shrine/model/product.dart';
import 'package:gallery/studies/shrine/supplemental/product_card.dart';

class DesktopProductCardColumn extends StatelessWidget {
  const DesktopProductCardColumn({
    @required this.columnCount,
    @required this.currentColumn,
    @required this.alignToEnd,
    @required this.startLarge,
    @required this.products,
    @required this.largeImageWidth,
    @required this.smallImageWidth,
  });

  final int columnCount;
  final int currentColumn;
  final List<Product> products;

  final bool alignToEnd;
  final bool startLarge;

  final double largeImageWidth;
  final double smallImageWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final int currentColumnProductCount =
          (products.length - currentColumn - 1 + columnCount) ~/ columnCount;
      final int currentColumnWidgetCount =
          max(2 * currentColumnProductCount - 1, 0);

      return Container(
        width: largeImageWidth,
        child: Column(
          crossAxisAlignment:
              alignToEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            if (currentColumn % 2 == 1) Container(height: 84),
            ...List<Widget>.generate(currentColumnWidgetCount, (index) {
              Widget card;
              if (index % 2 == 0) {
                // This is a product.
                final int productCardIndex = index ~/ 2;
                card = DesktopProductCard(
                  product:
                      products[productCardIndex * columnCount + currentColumn],
                  imageWidth: startLarge
                      ? ((productCardIndex % 2 == 0)
                          ? largeImageWidth
                          : smallImageWidth)
                      : ((productCardIndex % 2 == 0)
                          ? smallImageWidth
                          : largeImageWidth),
                );
              } else {
                // This is just a divider.
                card = Container(
                  height: 84,
                );
              }
              return RepaintBoundary(child: card);
            }),
          ],
        ),
      );
    });
  }
}
