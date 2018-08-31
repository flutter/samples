// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

enum VeggieCategory {
  legume,
  tuber,
  cruciferous,
  gourd,
  leafy,
  berry,
  stealthFruit,
  tropical,
  fruit,
  melon,
  stoneFruit,
  fern,
  citrus,
  root,
  allium,
  fungus,
  vegetable,
}

enum Season {
  winter,
  spring,
  summer,
  autumn,
}

final Map<VeggieCategory, String> veggieCategoryNames = {
  VeggieCategory.legume: 'Legume',
  VeggieCategory.tuber: 'Tuber',
  VeggieCategory.cruciferous: 'Cruciferous',
  VeggieCategory.gourd: 'Gourd',
  VeggieCategory.leafy: 'Leafy',
  VeggieCategory.berry: 'Berry',
  VeggieCategory.stealthFruit: 'Stealth fruit',
  VeggieCategory.tropical: 'Tropical',
  VeggieCategory.fruit: 'Fruit',
  VeggieCategory.melon: 'Melon',
  VeggieCategory.stoneFruit: 'Stone fruit',
  VeggieCategory.fern: 'Technically fern',
  VeggieCategory.citrus: 'Citrus',
  VeggieCategory.root: 'Root vegetable',
  VeggieCategory.allium: 'Allium',
  VeggieCategory.fungus: 'Fungus',
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
  final int accentColor;

  /// Seasons during which a veggie is harvested.
  final List<Season> seasons;

  /// Whether or not the veggie has been saved to the user's garden (i.e. marked
  /// as a favorite).
  bool isFavorite;
}
