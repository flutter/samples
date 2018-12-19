// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';
import 'package:veggieseasons/widgets/close_button.dart';

/// A circular widget that represents a season of the year.
///
/// The season can be displayed as a valid harvest time or one during which a
/// particular veggie cannot be harvested. Bright colors are used in the first
/// case, and grays in the latter.
class SeasonCircle extends StatelessWidget {
  const SeasonCircle(this.season, this.isHarvestTime);

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

  Widget _createHeader(BuildContext context, AppState model) {
    final veggie = model.getVeggie(id);

    return SizedBox(
      height: 200.0,
      child: Stack(
        children: [
          Positioned(
            right: 0.0,
            left: 0.0,
            child: Hero(
              tag: veggie.id,
              child: Image.asset(
                veggie.imageAssetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            right: 16.0,
            child: SafeArea(
              child: CloseButton(() {
                Navigator.of(context).pop();
              }),
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
          Wrap(
            children: Season.values.map((s) {
              return SeasonCircle(s, veggie.seasons.contains(s));
            }).toList(),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoSwitch(
                value: veggie.isFavorite,
                onChanged: (value) {
                  model.setFavorite(id, value);
                },
              ),
              SizedBox(width: 8.0),
              Text('Save to Garden'),
            ],
          ),
          SizedBox(height: 24.0),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              veggieCategoryNames[veggie.category].toUpperCase(),
              style: Styles.minorText,
            ),
          ),
          SizedBox(width: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(veggie.shortDescription),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<AppState>(context, rebuildOnChange: true);

    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _createHeader(context, model),
          _createDetails(model),
        ],
      ),
    );
  }
}
