// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/preferences.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';
import 'package:veggieseasons/widgets/veggie_card.dart';

class ListScreen extends StatelessWidget {
  Widget _generateVeggieRow(Veggie veggie, Preferences prefs,
      {bool inSeason = true}) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: FutureBuilder<Set<VeggieCategory>>(
          future: prefs.preferredCategories,
          builder: (context, snapshot) {
            final data = snapshot.data ?? <VeggieCategory>{};
            return VeggieCard(veggie, inSeason, data.contains(veggie.category));
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        var dateString = DateFormat('MMMM y').format(DateTime.now());

        final appState =
            ScopedModel.of<AppState>(context, rebuildOnChange: true);
        final prefs =
            ScopedModel.of<Preferences>(context, rebuildOnChange: true);
        final themeData = CupertinoTheme.of(context);
        return SafeArea(
          bottom: false,
          child: ListView.builder(
            itemCount: appState.allVeggies.length + 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(dateString.toUpperCase(), style: Styles.minorText),
                      Text('In season today',
                          style: Styles.headlineText(themeData)),
                    ],
                  ),
                );
              } else if (index <= appState.availableVeggies.length) {
                return _generateVeggieRow(
                  appState.availableVeggies[index - 1],
                  prefs,
                );
              } else if (index <= appState.availableVeggies.length + 1) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                  child: Text('Not in season',
                      style: Styles.headlineText(themeData)),
                );
              } else {
                var relativeIndex =
                    index - (appState.availableVeggies.length + 2);
                return _generateVeggieRow(
                    appState.unavailableVeggies[relativeIndex], prefs,
                    inSeason: false);
              }
            },
          ),
        );
      },
    );
  }
}
