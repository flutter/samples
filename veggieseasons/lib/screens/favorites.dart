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
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        final model = ScopedModel.of<AppState>(context, rebuildOnChange: true);

        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('My Garden'),
          ),
          child: Center(
            child: model.favoriteVeggies.isEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'You haven\'t added any favorite veggies to your garden yet.',
                      style: Styles.headlineDescription,
                    ),
                  )
                : ListView(
                    children: [
                      SizedBox(height: 24),
                      for (Veggie veggie in model.favoriteVeggies)
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
                          child: VeggieHeadline(veggie),
                        ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
