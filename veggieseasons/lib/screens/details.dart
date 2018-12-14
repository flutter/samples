// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:veggieseasons/data/model.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';

/// A circular widget that represents a season of the year.
///
/// The season can be displayed as a valid harvest season or one during which a
/// particular veggie cannot be harvested. Bright colors are used in the first
/// case, and grays in the latter.
class SeasonCircle extends StatelessWidget {
  SeasonCircle(this.season, this.isHarvestTime);

  /// Season to be displayed by this widget.
  final Season season;

  /// Whether or not [season] should be presented as a valid harvest season.
  final bool isHarvestTime;

  String get _firstChars {
    return '${season.toString().substring(7, 8).toUpperCase()}'
        '${season.toString().substring(8, 9)}';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isHarvestTime
              ? Styles.seasonColors[season]
              : Styles.transparentColor,
          borderRadius: BorderRadius.circular(25.0),
          border: Styles.seasonBorder,
        ),
        child: SizedBox(
          height: 50.0,
          width: 50.0,
          child: Center(
            child: Text(
              _firstChars,
              style: isHarvestTime
                  ? Styles.activeSeasonText
                  : Styles.inactiveSeasonText,
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final int id;

  DetailsScreen(this.id);

  Widget _createFavoriteButton(bool isFav, VoidCallback onPressed) {
    return CupertinoButton(
      color: Styles.buttonColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isFav ? Styles.checkedIcon : Styles.uncheckedIcon,
            color: Styles.buttonIconColor,
          ),
          SizedBox(width: 4.0),
          Text(isFav ? 'Saved to Garden' : 'Save to Garden'),
        ],
      ),
      onPressed: onPressed,
    );
  }

  Widget _createHeader(AppState model) {
    final veggie = model.getVeggie(id);

    return SizedBox(
      height: 200.0,
      child: Stack(
        children: [
          Positioned(
            right: 0.0,
            left: 0.0,
            child: Image.asset(
              veggie.imageAssetPath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: Styles.shadowGradient,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 16.0),
                child: Text(
                  veggie.name,
                  style: Styles.subheadText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDetails(AppState model) {
    final veggie = model.getVeggie(id);

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Wrap(
                children: Season.values.map((s) {
                  return SeasonCircle(s, veggie.seasons.contains(s));
                }).toList(),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    veggieCategoryNames[veggie.category].toUpperCase(),
                    style: Styles.minorText,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(veggie.shortDescription),
          ),
          _createFavoriteButton(veggie.isFavorite, () {
            model.toggleFavorite(veggie.id);
          }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<AppState>(context, rebuildOnChange: true);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Details'),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _createHeader(model),
          _createDetails(model),
        ],
      ),
    );
  }
}
