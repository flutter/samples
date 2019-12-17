// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

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

  for (int productIndex = 0; productIndex < products.length; ++productIndex) {

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

