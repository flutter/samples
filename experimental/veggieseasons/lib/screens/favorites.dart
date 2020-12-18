// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/preferences.dart';
import 'package:veggieseasons/widgets/veggie_headline.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({this.restorationId, Key key}) : super(key: key);

  final String restorationId;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      restorationScopeId: restorationId,
      builder: (context) {
        final prefs = Provider.of<Preferences>(context);
        final model = Provider.of<AppState>(context);

        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('My Garden'),
          ),
          child: Center(
            child: FutureBuilder<Set<int>>(
              future: prefs.favoriteVeggies,
              builder: (context, snapshot) {
                return snapshot.data == null || snapshot.data.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          'You haven\'t added any favorite veggies to your garden yet.',
                          style: CupertinoTheme.of(context).textTheme.textStyle,
                        ),
                      )
                    : ListView(
                        restorationId: 'list',
                        children: [
                          SizedBox(height: 24),
                          for (var veggieID in snapshot.data)
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
                              child: VeggieHeadline(model.getVeggie(veggieID)),
                            ),
                        ],
                      );
              },
            ),
          ),
        );
      },
    );
  }
}
