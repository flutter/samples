// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/screens/details.dart';
import 'package:veggieseasons/styles.dart';

class VeggieCard extends StatelessWidget {
  VeggieCard(this.veggie, this.isPreferredCategory);

  /// Veggie to be displayed by the card.
  final Veggie veggie;

  /// Whether [veggie] falls into one of user's preferred [VeggieCategory]s
  final bool isPreferredCategory;

  List<Widget> _buildStackChildren() {
    final widgets = <Widget>[];

    widgets.add(Hero(
      tag: veggie.id,
      child: Image.asset(
        veggie.imageAssetPath,
        fit: BoxFit.cover,
      ),
    ));

    widgets.add(Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: veggie.accentColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                veggie.name,
                style: Styles.cardTitleText,
              ),
              Text(
                veggie.shortDescription,
                style: Styles.cardDescriptionText,
              ),
            ],
          ),
        ),
      ),
    ));

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(
          builder: (context) => DetailsScreen(veggie.id),
          fullscreenDialog: true,
        ));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          children: _buildStackChildren(),
        ),
      ),
    );
  }
}
