// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../../../l10n/gallery_localizations.dart';

class Category {
  const Category({
    @required this.name,
    @required this.id,
  }) : assert(name != null);

  // A function taking a BuildContext as input and
  // returns the internationalized name of the category.
  final String Function(BuildContext) name;

  // An integer ID for the category.
  final int id;
}

Category categoryAll = Category(
  name: (context) => GalleryLocalizations.of(context).shrineCategoryNameAll,
  id: 0,
);

Category categoryAccessories = Category(
  name: (context) =>
      GalleryLocalizations.of(context).shrineCategoryNameAccessories,
  id: 1,
);

Category categoryClothing = Category(
  name: (context) =>
      GalleryLocalizations.of(context).shrineCategoryNameClothing,
  id: 2,
);

Category categoryHome = Category(
  name: (context) => GalleryLocalizations.of(context).shrineCategoryNameHome,
  id: 3,
);

List<Category> categories = [
  categoryAll,
  categoryAccessories,
  categoryClothing,
  categoryHome,
];

class Product {
  const Product({
    @required this.category,
    @required this.id,
    @required this.isFeatured,
    @required this.name,
    @required this.price,
  })  : assert(category != null),
        assert(id != null),
        assert(isFeatured != null),
        assert(name != null),
        assert(price != null);

  final Category category;
  final int id;
  final bool isFeatured;

  // A function taking a BuildContext as input and
  // returns the internationalized name of the product.
  final String Function(BuildContext) name;

  final int price;

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';
}
