// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

enum VeggieCategory {
  allium,
  berry,
  citrus,
  cruciferous,
  fern,
  flower,
  fruit,
  fungus,
  gourd,
  leafy,
  legume,
  melon,
  root,
  stealthFruit,
  stoneFruit,
  tropical,
  tuber,
  vegetable,
}

enum Season {
  winter,
  spring,
  summer,
  autumn,
}

const Map<VeggieCategory, String> veggieCategoryNames = {
  VeggieCategory.allium: 'Allium',
  VeggieCategory.berry: 'Berry',
  VeggieCategory.citrus: 'Citrus',
  VeggieCategory.cruciferous: 'Cruciferous',
  VeggieCategory.fern: 'Technically a fern',
  VeggieCategory.flower: 'Flower',
  VeggieCategory.fruit: 'Fruit',
  VeggieCategory.fungus: 'Fungus',
  VeggieCategory.gourd: 'Gourd',
  VeggieCategory.leafy: 'Leafy',
  VeggieCategory.legume: 'Legume',
  VeggieCategory.melon: 'Melon',
  VeggieCategory.root: 'Root vegetable',
  VeggieCategory.stealthFruit: 'Stealth fruit',
  VeggieCategory.stoneFruit: 'Stone fruit',
  VeggieCategory.tropical: 'Tropical',
  VeggieCategory.tuber: 'Tuber',
  VeggieCategory.vegetable: 'Vegetable',
};

class Veggie {
  Veggie({
    @required this.id,
    @required this.name,
    @required this.imageAssetPath,
    @required this.category,
    @required this.shortDescription,
    @required this.accentColor,
    @required this.seasons,
    this.isFavorite = false,
  });

  final int id;

  final String name;

  /// Each veggie has an associated image asset that's used as a background
  /// image and icon.
  final String imageAssetPath;

  final VeggieCategory category;

  final String shortDescription;

  /// A color value to use when constructing UI elements to match the image
  /// found at [imageAssetPath].
  final Color accentColor;

  /// Seasons during which a veggie is harvested.
  final List<Season> seasons;

  /// Whether or not the veggie has been saved to the user's garden (i.e. marked
  /// as a favorite).
  bool isFavorite;

  String get categoryName => veggieCategoryNames[category];
}
