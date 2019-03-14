// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';
import 'package:veggieseasons/widgets/veggie_headline.dart';

class FavoritesScreen extends StatelessWidget {
  /// Builds the "content" of the favorites screen: either a list of favorite
  /// veggies or a note that says the user hasn't favorited any yet.
  Widget _buildTabViewBody(BuildContext context) {
    final model = ScopedModel.of<AppState>(context, rebuildOnChange: true);

    if (model.favoriteVeggies.length == 0) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Text(
          'You haven\'t added any favorite veggies to your garden yet.',
          style: Styles.headlineDescription,
        ),
      );
    }

    final rows = <Widget>[
      SizedBox(height: 24.0),
    ];

    for (Veggie veggie in model.favoriteVeggies) {
      rows.add(
        Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
          child: VeggieHeadline(veggie),
        ),
      );
    }

    return ListView(
      children: rows,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('My Garden'),
          ),
          child: Center(
            child: _buildTabViewBody(context),
          ),
        );
      },
    );
  }
}
