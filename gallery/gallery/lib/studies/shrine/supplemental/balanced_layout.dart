// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'package:gallery/studies/shrine/model/product.dart';

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

void iterateUntilBalanced(
  List<Set<_TaggedHeightData>> columnObjects,
  List<double> columnHeights,
) {
  int failedMoves = 0;
  int totalTries = 0; // TODO: remove
  final int columnCount = columnObjects.length;
  while (true) {
    for (int source = 0; source < columnCount; ++source) {
      for (int target = 0; target < columnCount; ++target) {
        if (source != target) {
          totalTries ++;
          // Attempt to move an object from source to target
          bool success;
          if (columnHeights[source] <= columnHeights[target]) {
            success = false;
          } else {
            final double difference =
                columnHeights[source] - columnHeights[target];
            _TaggedHeightData candidate;
            success = false;
            for (final newCandidate in columnObjects[source]) {
              if (newCandidate.height < difference) {
                if (newCandidate.isBetterCandidateThan(candidate, heightTarget: difference / 2)) {
                  candidate = newCandidate;
                  success = true;
                }
              }
            }
            if (candidate != null) {
              columnObjects[source].remove(candidate);
              columnObjects[target].add(candidate);
              columnHeights[source] -= candidate.height;
              columnHeights[target] += candidate.height;
            }
          }
          if (!success) {
            ++ failedMoves;
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

List<List<Product>> balancedLayout({
  int columnCount,
  List<Product> products,
  double largeImageWidth,
  double smallImageWidth,
}) {
  final List<Size> productSizes = [
    for (var product in products)
      _imageSize(
        Image.asset(
          product.assetName,
          package: product.assetPackage,
        ),
      ),
  ];

  bool hasNull = false;
  for (final productSize in productSizes) {
    if (productSize == null) {
      hasNull = true;
      break;
    }
  }

  if (hasNull) {
    // If some image sizes are not read, return default layout.
    List<List<Product>> result = List<List<Product>>.generate(columnCount, (columnIndex) => []);
    for (var index = 0; index < products.length; ++index) {
      result[index % columnCount].add(products[index]);
    }

    return result;
  }

  final List<double> productHeights = [
    for (final productSize in productSizes)
      productSize.height / productSize.width * (largeImageWidth + smallImageWidth) / 2 + 84 * 2,
  ];

  final List<List<int>> distribution = balancedDistribution(
    columnCount: columnCount,
    data: productHeights,
    biases: List<double>
        .generate(columnCount, (column) => (column % 2 == 0 ? 0 : 84)),
  );

  final List<List<Product>> result = [
    for (final column in distribution)
      [
        for (final index in column)
          products[index],
      ]
  ];

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
