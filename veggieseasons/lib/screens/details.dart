// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/preferences.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';
import 'package:veggieseasons/widgets/close_button.dart';
import 'package:veggieseasons/widgets/trivia.dart';

class ServingInfoChart extends StatelessWidget {
  const ServingInfoChart(this.veggie, this.prefs, {Key? key}) : super(key: key);

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
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 9,
              bottom: 4,
            ),
            child: Text(
              'Serving info',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Styles.servingInfoBorderColor),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Table(
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Serving size:',
                          style: Styles.detailsServingLabelText(themeData),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          veggie.servingSize,
                          textAlign: TextAlign.end,
                          style: CupertinoTheme.of(context).textTheme.textStyle,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Calories:',
                          style: Styles.detailsServingLabelText(themeData),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          '${veggie.caloriesPerServing} kCal',
                          style: CupertinoTheme.of(context).textTheme.textStyle,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Vitamin A:',
                          style: Styles.detailsServingLabelText(themeData),
                        ),
                      ),
                      TableCell(
                        child: _buildVitaminText(
                          veggie.vitaminAPercentage,
                          prefs.desiredCalories,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Vitamin C:',
                          style: Styles.detailsServingLabelText(themeData),
                        ),
                      ),
                      TableCell(
                        child: _buildVitaminText(
                          veggie.vitaminCPercentage,
                          prefs.desiredCalories,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
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
          ),
        )
      ],
    );
  }
}

class InfoView extends StatelessWidget {
  final int? id;

  const InfoView(this.id, {Key? key}) : super(key: key);

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
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              FutureBuilder<Set<VeggieCategory>>(
                future: prefs.preferredCategories,
                builder: (context, snapshot) {
                  return Text(
                    veggie.categoryName!.toUpperCase(),
                    style: (snapshot.hasData &&
                            snapshot.data!.contains(veggie.category))
                        ? Styles.detailsPreferredCategoryText(themeData)
                        : themeData.textTheme.textStyle,
                  );
                },
              ),
              const Spacer(),
              for (Season season in veggie.seasons) ...[
                const SizedBox(width: 12),
                Padding(
                  padding: Styles.seasonIconPadding[season]!,
                  child: Icon(
                    Styles.seasonIconData[season],
                    semanticLabel: seasonNames[season],
                    color: Styles.seasonColors[season],
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 8),
          Text(
            veggie.name,
            style: Styles.detailsTitleText(themeData),
          ),
          const SizedBox(height: 8),
          Text(
            veggie.shortDescription,
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
          ServingInfoChart(veggie, prefs),
          const SizedBox(height: 24),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoSwitch(
                value: veggie.isFavorite,
                onChanged: (value) {
                  appState.setFavorite(id, value);
                },
              ),
              const SizedBox(width: 8),
              Text(
                'Save to Garden',
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailsScreen extends StatefulWidget {
  final int? id;
  final String? restorationId;

  const DetailsScreen({this.id, this.restorationId, Key? key})
      : super(key: key);

  static String show(NavigatorState navigator, int veggieId) {
    return navigator.restorablePush<void>(_routeBuilder, arguments: veggieId);
  }

  static Route<void> _routeBuilder(BuildContext context, Object? arguments) {
    final veggieId = arguments as int?;
    return CupertinoPageRoute(
      builder: (context) =>
          DetailsScreen(id: veggieId, restorationId: 'details'),
      fullscreenDialog: true,
    );
  }

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> with RestorationMixin {
  final RestorableInt _selectedViewIndex = RestorableInt(0);

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedViewIndex, 'tab');
  }

  @override
  void dispose() {
    _selectedViewIndex.dispose();
    super.dispose();
  }

  Widget _buildHeader(BuildContext context, AppState model) {
    final veggie = model.getVeggie(widget.id);

    return SizedBox(
      height: 150,
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
                Navigator.of(context).pop();
              }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return UnmanagedRestorationScope(
      bucket: bucket,
      child: CupertinoPageScaffold(
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
                  CupertinoSegmentedControl<int>(
                    children: const {
                      0: Text(
                        'Facts & Info',
                      ),
                      1: Text(
                        'Trivia',
                      )
                    },
                    groupValue: _selectedViewIndex.value,
                    onValueChanged: (value) {
                      setState(() => _selectedViewIndex.value = value);
                    },
                  ),
                  _selectedViewIndex.value == 0
                      ? InfoView(widget.id)
                      : TriviaView(id: widget.id, restorationId: 'trivia'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
