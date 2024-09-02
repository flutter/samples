// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../data/preferences.dart';
import '../data/veggie.dart';
import '../styles.dart';

class VeggieCategorySettingsScreen extends StatelessWidget {
  const VeggieCategorySettingsScreen({super.key, this.restorationId});

  final String? restorationId;

  static Page<void> pageBuilder(BuildContext context) {
    return const CupertinoPage(
      restorationId: 'router.categories',
      child: VeggieCategorySettingsScreen(restorationId: 'category'),
      title: 'Preferred Categories',
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<Preferences>(context);
    final currentPrefs = model.preferredCategories;
    var brightness = CupertinoTheme.brightnessOf(context);
    return RestorationScope(
      restorationId: restorationId,
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Preferred Categories'),
          previousPageTitle: 'Settings',
        ),
        backgroundColor: Styles.scaffoldBackground(brightness),
        child: FutureBuilder<Set<VeggieCategory>>(
          future: currentPrefs,
          builder: (context, snapshot) {
            final tiles = <CupertinoListTile>[];

            for (final category in VeggieCategory.values) {
              CupertinoSwitch toggle;

              // It's possible that category data hasn't loaded from shared prefs
              // yet, so display it if possible and fall back to disabled switches
              // otherwise.
              if (snapshot.hasData) {
                toggle = CupertinoSwitch(
                  value: snapshot.data!.contains(category),
                  onChanged: (value) {
                    if (value) {
                      model.addPreferredCategory(category);
                    } else {
                      model.removePreferredCategory(category);
                    }
                  },
                );
              } else {
                toggle = const CupertinoSwitch(
                  value: false,
                  onChanged: null,
                );
              }

              tiles.add(
                CupertinoListTile.notched(
                  title: Text(veggieCategoryNames[category]!),
                  trailing: toggle,
                ),
              );
            }

            return ListView(
              restorationId: 'list',
              children: [
                CupertinoListSection.insetGrouped(
                  hasLeading: false,
                  children: tiles,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CalorieSettingsScreen extends StatelessWidget {
  const CalorieSettingsScreen({super.key, this.restorationId});

  final String? restorationId;

  static const max = 1000;
  static const min = 2600;
  static const step = 200;

  static Page<void> pageBuilder(BuildContext context) {
    return const CupertinoPage<void>(
      restorationId: 'router.calorie',
      child: CalorieSettingsScreen(restorationId: 'calorie'),
      title: 'Calorie Target',
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<Preferences>(context);
    var brightness = CupertinoTheme.brightnessOf(context);
    return RestorationScope(
      restorationId: restorationId,
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          previousPageTitle: 'Settings',
        ),
        backgroundColor: Styles.scaffoldBackground(brightness),
        child: ListView(
          restorationId: 'list',
          children: [
            FutureBuilder<int>(
              future: model.desiredCalories,
              builder: (context, snapshot) {
                final tiles = <CupertinoListTile>[];

                for (var cals = max; cals < min; cals += step) {
                  tiles.add(
                    CupertinoListTile.notched(
                      title: Text('$cals calories'),
                      trailing: SettingsIcon(
                        icon: CupertinoIcons.check_mark,
                        foregroundColor:
                            snapshot.hasData && snapshot.data == cals
                                ? CupertinoColors.activeBlue
                                : Styles.transparentColor,
                        backgroundColor: Styles.transparentColor,
                      ),
                      onTap: snapshot.hasData
                          ? () => model.setDesiredCalories(cals)
                          : null,
                    ),
                  );
                }

                return CupertinoListSection.insetGrouped(
                  header: Text(
                    'Available calorie levels'.toUpperCase(),
                    style: Styles.settingsGroupHeaderText(
                        CupertinoTheme.of(context)),
                  ),
                  footer: Text(
                    'These are used for serving calculations',
                    style: Styles.settingsGroupFooterText(
                        CupertinoTheme.of(context)),
                  ),
                  children: tiles,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({this.restorationId, super.key});

  final String? restorationId;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  CupertinoListTile _buildCaloriesTile(
      BuildContext context, Preferences prefs) {
    return CupertinoListTile.notched(
      leading: const SettingsIcon(
        backgroundColor: CupertinoColors.systemBlue,
        icon: Styles.calorieIcon,
      ),
      title: const Text('Calorie Target'),
      additionalInfo: FutureBuilder<int>(
        future: prefs.desiredCalories,
        builder: (context, snapshot) {
          return Text(
            snapshot.data?.toString() ?? '',
            style: CupertinoTheme.of(context).textTheme.textStyle,
          );
        },
      ),
      trailing: const CupertinoListTileChevron(),
      onTap: () => context.go('/settings/calories'),
    );
  }

  CupertinoListTile _buildCategoriesTile(
      BuildContext context, Preferences prefs) {
    return CupertinoListTile.notched(
      leading: const SettingsIcon(
        backgroundColor: CupertinoColors.systemOrange,
        icon: Styles.preferenceIcon,
      ),
      title: const Text('Preferred Categories'),
      trailing: const CupertinoListTileChevron(),
      onTap: () => context.go('/settings/categories'),
    );
  }

  CupertinoListTile _buildRestoreDefaultsTile(
      BuildContext context, Preferences prefs) {
    return CupertinoListTile.notched(
      leading: const SettingsIcon(
        backgroundColor: CupertinoColors.systemRed,
        icon: Styles.resetIcon,
      ),
      title: const Text('Restore Defaults'),
      onTap: () {
        showCupertinoDialog<void>(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text('Are you sure?'),
            content: const Text(
              'Are you sure you want to reset the current settings?',
            ),
            actions: [
              CupertinoDialogAction(
                isDestructiveAction: true,
                child: const Text('Yes'),
                onPressed: () async {
                  await prefs.restoreDefaults();
                  if (!context.mounted) return;
                  context.pop();
                },
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                child: const Text('No'),
                onPressed: () => context.pop(),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final prefs = Provider.of<Preferences>(context);

    return CupertinoPageScaffold(
      backgroundColor:
          Styles.scaffoldBackground(CupertinoTheme.brightnessOf(context)),
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Settings'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CupertinoListSection.insetGrouped(
                  children: [
                    _buildCaloriesTile(context, prefs),
                    _buildCategoriesTile(context, prefs),
                  ],
                ),
                CupertinoListSection.insetGrouped(
                  children: [
                    _buildRestoreDefaultsTile(context, prefs),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({
    required this.icon,
    this.foregroundColor = CupertinoColors.white,
    this.backgroundColor = CupertinoColors.black,
    super.key,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(
          icon,
          color: foregroundColor,
          size: 20,
        ),
      ),
    );
  }
}
