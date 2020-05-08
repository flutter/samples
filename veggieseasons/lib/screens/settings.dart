// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:veggieseasons/data/preferences.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';
import 'package:veggieseasons/widgets/settings_group.dart';
import 'package:veggieseasons/widgets/settings_item.dart';

class VeggieCategorySettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<Preferences>(context, rebuildOnChange: true);
    final currentPrefs = model.preferredCategories;
    var brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Preferred Categories'),
        previousPageTitle: 'Settings',
      ),
      backgroundColor: Styles.scaffoldBackground(brightness),
      child: FutureBuilder<Set<VeggieCategory>>(
        future: currentPrefs,
        builder: (context, snapshot) {
          final items = <SettingsItem>[];

          for (final category in VeggieCategory.values) {
            CupertinoSwitch toggle;

            // It's possible that category data hasn't loaded from shared prefs
            // yet, so display it if possible and fall back to disabled switches
            // otherwise.
            if (snapshot.hasData) {
              toggle = CupertinoSwitch(
                value: snapshot.data.contains(category),
                onChanged: (value) {
                  if (value) {
                    model.addPreferredCategory(category);
                  } else {
                    model.removePreferredCategory(category);
                  }
                },
              );
            } else {
              toggle = CupertinoSwitch(
                value: false,
                onChanged: null,
              );
            }

            items.add(SettingsItem(
              label: veggieCategoryNames[category],
              content: toggle,
            ));
          }

          return ListView(
            children: [
              SettingsGroup(
                items: items,
              ),
            ],
          );
        },
      ),
    );
  }
}

class CalorieSettingsScreen extends StatelessWidget {
  static const max = 1000;
  static const min = 2600;
  static const step = 200;

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<Preferences>(context, rebuildOnChange: true);
    var brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Settings',
      ),
      backgroundColor: Styles.scaffoldBackground(brightness),
      child: ListView(
        children: [
          FutureBuilder<int>(
            future: model.desiredCalories,
            builder: (context, snapshot) {
              final steps = <SettingsItem>[];

              for (var cals = max; cals < min; cals += step) {
                steps.add(
                  SettingsItem(
                    label: cals.toString(),
                    icon: SettingsIcon(
                      icon: Styles.checkIcon,
                      foregroundColor: snapshot.hasData && snapshot.data == cals
                          ? CupertinoColors.activeBlue
                          : Styles.transparentColor,
                      backgroundColor: Styles.transparentColor,
                    ),
                    onPress: snapshot.hasData
                        ? () => model.setDesiredCalories(cals)
                        : null,
                  ),
                );
              }

              return SettingsGroup(
                items: steps,
                header: SettingsGroupHeader('Available calorie levels'),
                footer: SettingsGroupFooter('These are used for serving '
                    'calculations'),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  SettingsItem _buildCaloriesItem(BuildContext context, Preferences prefs) {
    return SettingsItem(
      label: 'Calorie Target',
      icon: SettingsIcon(
        backgroundColor: Styles.iconBlue,
        icon: Styles.calorieIcon,
      ),
      content: FutureBuilder<int>(
        future: prefs.desiredCalories,
        builder: (context, snapshot) {
          return Row(
            children: [
              Text(
                snapshot.data?.toString() ?? '',
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
              SizedBox(width: 8),
              SettingsNavigationIndicator(),
            ],
          );
        },
      ),
      onPress: () {
        Navigator.of(context).push<void>(
          CupertinoPageRoute(
            builder: (context) => CalorieSettingsScreen(),
            title: 'Calorie Target',
          ),
        );
      },
    );
  }

  SettingsItem _buildCategoriesItem(BuildContext context, Preferences prefs) {
    return SettingsItem(
      label: 'Preferred Categories',
      subtitle: 'What types of veggies you prefer!',
      icon: SettingsIcon(
        backgroundColor: Styles.iconGold,
        icon: Styles.preferenceIcon,
      ),
      content: SettingsNavigationIndicator(),
      onPress: () {
        Navigator.of(context).push<void>(
          CupertinoPageRoute(
            builder: (context) => VeggieCategorySettingsScreen(),
            title: 'Preferred Categories',
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final prefs = ScopedModel.of<Preferences>(context, rebuildOnChange: true);

    return CupertinoPageScaffold(
      child: Container(
        color: Styles.scaffoldBackground(CupertinoTheme.brightnessOf(context)),
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Settings'),
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    SettingsGroup(
                      items: [
                        _buildCaloriesItem(context, prefs),
                        _buildCategoriesItem(context, prefs),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
