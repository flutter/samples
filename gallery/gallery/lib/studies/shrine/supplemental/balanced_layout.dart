// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:gallery/demos/reference/colors_demo.dart';

import 'package:gallery/studies/shrine/model/product.dart';

List<List<Product>> balancedLayout({
  int columnCount,
  List<Product> products,
  double largeImageWidth,
  double smallImageWidth,
}) {
  final List<Size> productSizes = [
    for (var product in products)
      imageSize(
        Image.asset(
          product.assetName,
          package: product.assetPackage,
        ),
      ),
  ];

  List<List<Product>> result = List<List<Product>>
      .generate(columnCount, (column) => []);

  List<double> columnHeight = List<double>
      .generate(columnCount, (column) => (column % 2 == 0 ? 0 : 84));

  List<bool> lastElementIsLarge = List<bool>
      .generate(columnCount, (column) => (column % 2 == 1));

  PriorityQueue<ColumnHeightData> columnCandidates =
      PriorityQueue<ColumnHeightData>(_compareColumnHeightData);

  columnCandidates.addAll(
    [for (int columnIndex = 0; columnIndex < columnCount; ++columnIndex)
      ColumnHeightData(
        height: columnHeight[columnIndex],
        columnIndex: columnIndex,
      )]
  );

  for (int productIndex = 0; productIndex < products.length; ++productIndex) {
    final product = products[productIndex];
    final productSize = productSizes[productIndex];

    // Select column.
    final targetColumnData = columnCandidates.removeFirst();
    final targetColumn = targetColumnData.columnIndex;

    // Add to column.
    result[targetColumn].add(product);

    // Update column height.
    final imageHeight = productSize.height / productSize.width *
        (lastElementIsLarge[targetColumn] ? largeImageWidth : smallImageWidth);

    columnHeight[targetColumn] += imageHeight + 84 * 2;

    // Update column.
    lastElementIsLarge[targetColumn] = ! lastElementIsLarge[targetColumn];

    // Update columnCandidates.
    columnCandidates.add(
      ColumnHeightData(
        height: columnHeight[targetColumn],
        columnIndex: targetColumn,
      ),
    );
  }

  return result;
}

Size imageSize(Image imageWidget) {
  Size result;

  imageWidget.image.resolve(ImageConfiguration()).addListener(
    ImageStreamListener(
      (info, synchronousCall) {
        final finalImage = info.image;
        result = Size(
          finalImage.width.toDouble(),
          finalImage.height.toDouble(),
        );
      }
    )
  );

  return result;
}

class ColumnHeightData {
  const ColumnHeightData({
    @required this.height,
    @required this.columnIndex,
  });

  final double height;
  final int columnIndex;
}

int _compareColumnHeightData (ColumnHeightData a, ColumnHeightData b) {
  if (a.height < b.height) {
    return -1;
  } else if (a.height > b.height) {
    return 1;
  } else if (a.columnIndex < b.columnIndex) {
    return -1;
  } else if (a.columnIndex > b.columnIndex) {
    return 1;
  } else {
    return 0;
  }
}

