// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../data/app_state.dart';
import '../data/preferences.dart';
import '../data/veggie.dart';
import '../styles.dart';
import '../widgets/detail_buttons.dart';

class ServingInfoChart extends StatelessWidget {
  const ServingInfoChart(this.veggie, this.prefs, {super.key});

  final Veggie veggie;

  final Preferences prefs;

  // Creates a [Text] widget to display a veggie's "percentage of your daily
  // value of this vitamin" data adjusted for the user's preferred calorie
  // target.
  Widget _buildVitaminText(int standardPercentage, Future<int> targetCalories) {
    return FutureBuilder<int>(
      future: targetCalories,
      builder: (context, snapshot) {
        final target = snapshot.data ?? 2000;
        final percent = standardPercentage * 2000 ~/ target;

        return Text(
          '$percent% DV',
          style: CupertinoTheme.of(context).textTheme.textStyle,
          textAlign: TextAlign.end,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);
    return Column(
      children: [
        const SizedBox(height: 32),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Serving size',
              style: Styles.detailsServingLabelText(themeData),
            ),
            const Spacer(),
            Text(
              veggie.servingSize,
              textAlign: TextAlign.end,
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Calories',
              style: Styles.detailsServingLabelText(themeData),
            ),
            const Spacer(),
            Text(
              '${veggie.caloriesPerServing} kCal',
              style: CupertinoTheme.of(context).textTheme.textStyle,
              textAlign: TextAlign.end,
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Vitamin A',
              style: Styles.detailsServingLabelText(themeData),
            ),
            const Spacer(),
            _buildVitaminText(
              veggie.vitaminAPercentage,
              prefs.desiredCalories,
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Vitamin C',
              style: Styles.detailsServingLabelText(themeData),
            ),
            const Spacer(),
            _buildVitaminText(
              veggie.vitaminCPercentage,
              prefs.desiredCalories,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: FutureBuilder(
            future: prefs.desiredCalories,
            builder: (context, snapshot) {
              return Text(
                'Percent daily values based on a diet of '
                '${snapshot.data ?? '2,000'} calories.',
                style: Styles.detailsServingNoteText(themeData),
              );
            },
          ),
        ),
      ],
    );
  }
}

class InfoView extends StatelessWidget {
  final int? id;

  const InfoView(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final prefs = Provider.of<Preferences>(context);
    final veggie = appState.getVeggie(id);
    final themeData = CupertinoTheme.of(context);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            veggie.name,
            style: Styles.detailsTitleText(themeData),
          ),
          const SizedBox(height: 8),
          Text(
            veggie.shortDescription,
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
          const SizedBox(height: 16),
          Text(
            'Seasons',
            style: Styles.detailsServingLabelText(themeData),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              for (var season in Season.values) ...[
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Styles.seasonIconData[season],
                      color: veggie.seasons.contains(season)
                          ? Styles.seasonColors[season]
                          : const Color.fromRGBO(128, 128, 128, 1),
                      size: 24,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      season.name.characters.first.toUpperCase() +
                          season.name.characters.skip(1).string,
                      style: Styles.minorText(CupertinoTheme.of(context))
                          .copyWith(fontSize: 11),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ],
          ),
          ServingInfoChart(veggie, prefs),
        ],
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final int? id;
  final String? restorationId;

  const DetailsScreen({this.id, this.restorationId, super.key});

  Widget _buildHeader(BuildContext context, AppState model) {
    final veggie = model.getVeggie(id);

    return SizedBox(
      height: 240,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Image.asset(
              veggie.imageAssetPath,
              fit: BoxFit.cover,
              semanticLabel: 'A background image of ${veggie.name}',
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: SafeArea(
              child: CloseButton(() {
                context.pop();
              }),
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ShareButton(
                    () {
                      showCupertinoModalPopup<void>(
                        context: context,
                        builder: (context) {
                          return CupertinoActionSheet(
                            title: Text('Share ${veggie.name}'),
                            message: Text(veggie.shortDescription),
                            actions: [
                              CupertinoActionSheetAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  Builder(builder: (context) {
                    final appState = Provider.of<AppState>(context);
                    final veggie = appState.getVeggie(id);

                    return FavoriteButton(
                      () => appState.setFavorite(id, !veggie.isFavorite),
                      veggie.isFavorite,
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              restorationId: 'list',
              children: [
                _buildHeader(context, appState),
                const SizedBox(height: 20),
                InfoView(id),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
