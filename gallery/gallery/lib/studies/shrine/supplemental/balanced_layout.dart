// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'package:gallery/studies/shrine/model/product.dart';

const _emptyElement = -1;

class _TaggedHeightData {
  const _TaggedHeightData({
    @required this.index,
    @required this.height,
  });

  final int index;
  final double height;

  bool isBetterCandidateThan(_TaggedHeightData other, {double heightTarget}) {
    return other == null ||
        (height - heightTarget).abs() < (other.height - heightTarget).abs();
  }
}

class _ColumnHeightData {
  const _ColumnHeightData({
    @required this.height,
    @required this.columnIndex,
  });

  final double height;
  final int columnIndex;
}

int _compareColumnHeightData (_ColumnHeightData a, _ColumnHeightData b) {
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

List<_TaggedHeightData> toListAndAddEmpty(Set<_TaggedHeightData> set) {
  List<_TaggedHeightData> result = List<_TaggedHeightData>.from(set);
  result.add(_TaggedHeightData(index: _emptyElement, height: 0));
  return result;
}

void iterateUntilBalanced(
  List<Set<_TaggedHeightData>> columnObjects,
  List<double> columnHeights,
) {
  int failedMoves = 0;
  int totalTries = 0; // TODO: remove
  final int columnCount = columnObjects.length;

  // No need to rearrange a 1-column layout.
  if (columnCount == 1) {
    return;
  }

  while (true) {
    // Loop through all possible 2-combinations of columns.
    for (int source = 0; source < columnCount; ++source) {
      for (int target = source + 1; target < columnCount; ++target) {
        totalTries ++;
        // Attempt to switch an object from source and an object from target.
        bool success = false;

        final double bestHeight = (columnHeights[source] + columnHeights[target]) / 2;
        final double scoreLimit = (columnHeights[source] - bestHeight).abs();

        final List<_TaggedHeightData> sourceObjects = toListAndAddEmpty(columnObjects[source]);
        final List<_TaggedHeightData> targetObjects = toListAndAddEmpty(columnObjects[target]);

        _TaggedHeightData bestChoiceForA, bestChoiceForB;
        double bestScore;

        for (final a in sourceObjects) {
          for (final b in targetObjects) {
            if (a.index == _emptyElement && b.index == _emptyElement){
              continue;
            } else {
              final double score = (columnHeights[source] - a.height + b.height - bestHeight).abs();
              if (score < scoreLimit) {
                success = true;
                if (bestScore == null || score < bestScore) {
                  bestScore = score;
                  bestChoiceForA = a;
                  bestChoiceForB = b;
                }
              }
            }
          }
        }

        if (!success) {
          ++ failedMoves;
        } else {
          failedMoves = 0;
          if (bestChoiceForA.index != _emptyElement) {
            columnObjects[source].remove(bestChoiceForA);
            columnObjects[target].add(bestChoiceForA);
          }
          if (bestChoiceForB.index != _emptyElement) {
            columnObjects[target].remove(bestChoiceForB);
            columnObjects[source].add(bestChoiceForB);
          }
          columnHeights[source] += bestChoiceForB.height - bestChoiceForA.height;
          columnHeights[target] += bestChoiceForA.height - bestChoiceForB.height;
        }

        if (failedMoves >= columnCount * (columnCount - 1) ~/ 2) {
          // Sufficiently balanced.
          print('balanced: $columnHeights');
          print('total tries: $totalTries');
          return;
        }
      }
    }
  }
}

List<List<int>> balancedDistribution({
  int columnCount,
  List<double> data,
  List<double> biases,
}) {
  assert (biases.length == columnCount);

  List<Set<_TaggedHeightData>> columnObjects = List<Set<_TaggedHeightData>>
      .generate(columnCount, (column) => Set());

  List<double> columnHeights = List<double>.from(biases);

  for (var i = 0; i < data.length; ++i) {
    final int column = i % columnCount;
    columnHeights[column] += data[i];
    columnObjects[column].add(_TaggedHeightData(index: i, height: data[i]));
  }

  iterateUntilBalanced(columnObjects, columnHeights);

  return [
    for (final column in columnObjects)
      [
        for (final object in column)
          object.index,
      ],
  ];
}

String _encodeParameters({
  @required int columnCount,
  @required List<Product> products,
  @required double largeImageWidth,
  @required double smallImageWidth,
}) {
  final String productString =
      [for(final product in products) product.id.toString()].join(',');
  return '$columnCount;$productString,$largeImageWidth,$smallImageWidth';
}

List<List<Product>> generateLayout({
  @required List<Product> products,
  @required List<List<int>> layout,
}) {
  return [
    for (final column in layout)
      [
        for (final index in column)
          products [index],
      ]
  ];
}

List<List<Product>> balancedLayout({
  Map<String, List<List<int>>> cache,
  int columnCount,
  List<Product> products,
  double largeImageWidth,
  double smallImageWidth,
}) {

  final String encodedParameters = _encodeParameters(
    columnCount: columnCount,
    products: products,
    largeImageWidth: largeImageWidth,
    smallImageWidth: smallImageWidth,
  );

  if (cache.containsKey(encodedParameters)) {
    return generateLayout(
      products: products,
      layout: cache[encodedParameters],
    );
  }

  final List<Size> productSizes = [
    for (var product in products)
      _imageSize(
        Image.asset(
          product.assetName,
          package: product.assetPackage,
        ),
      ),
  ];

  bool hasNullSize = false;
  for (final productSize in productSizes) {
    if (productSize == null) {
      hasNullSize = true;
      break;
    }
  }

  if (hasNullSize) {
    // If some image sizes are not read, return default layout.
    List<List<Product>> result = List<List<Product>>.generate(columnCount, (columnIndex) => []);
    for (var index = 0; index < products.length; ++index) {
      result[index % columnCount].add(products[index]);
    }

    return result;
  }

  // All images have sizes. Use tailored layout.

  final List<double> productHeights = [
    for (final productSize in productSizes)
      productSize.height / productSize.width * (largeImageWidth + smallImageWidth) / 2 + 84 * 2,
  ];

  final List<List<int>> layout = balancedDistribution(
    columnCount: columnCount,
    data: productHeights,
    biases: List<double>
        .generate(columnCount, (column) => (column % 2 == 0 ? 0 : 84)),
  );

  cache[encodedParameters] = layout;

  final List<List<Product>> result = generateLayout(
    products: products,
    layout: layout,
  );

  return result;
}

double average(List<double> data) {
  return data.fold<double>(0, (a, b) => a + b) / data.length;
}

double standardDeviation(List<double> data) {
  final double mean = average(data);
  final List<double> squareDeviations = [
    for (final elem in data)
      math.pow(elem - mean, 2).toDouble(),
  ];
  return math.sqrt(average(squareDeviations));
}

Size _imageSize(Image imageWidget) {
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
