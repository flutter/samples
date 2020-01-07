// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN colorsDemo

const double kColorItemHeight = 48;

class _Palette {
  _Palette({
    this.name,
    this.primary,
    this.accent,
    this.threshold = 900,
  })  : assert(name != null),
        assert(primary != null),
        assert(threshold != null);

  final String name;
  final MaterialColor primary;
  final MaterialAccentColor accent;
  // Titles for indices > threshold are white, otherwise black.
  final int threshold;
}

List<_Palette> _allPalettes(BuildContext context) {
  return [
    _Palette(
      name: GalleryLocalizations.of(context).colorsRed,
      primary: Colors.red,
      accent: Colors.redAccent,
      threshold: 300,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsPink,
      primary: Colors.pink,
      accent: Colors.pinkAccent,
      threshold: 200,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsPurple,
      primary: Colors.purple,
      accent: Colors.purpleAccent,
      threshold: 200,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsDeepPurple,
      primary: Colors.deepPurple,
      accent: Colors.deepPurpleAccent,
      threshold: 200,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsIndigo,
      primary: Colors.indigo,
      accent: Colors.indigoAccent,
      threshold: 200,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsBlue,
      primary: Colors.blue,
      accent: Colors.blueAccent,
      threshold: 400,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsLightBlue,
      primary: Colors.lightBlue,
      accent: Colors.lightBlueAccent,
      threshold: 500,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsCyan,
      primary: Colors.cyan,
      accent: Colors.cyanAccent,
      threshold: 600,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsTeal,
      primary: Colors.teal,
      accent: Colors.tealAccent,
      threshold: 400,
    ),
    _Palette(
        name: GalleryLocalizations.of(context).colorsGreen,
        primary: Colors.green,
        accent: Colors.greenAccent,
        threshold: 500),
    _Palette(
      name: GalleryLocalizations.of(context).colorsLightGreen,
      primary: Colors.lightGreen,
      accent: Colors.lightGreenAccent,
      threshold: 600,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsLime,
      primary: Colors.lime,
      accent: Colors.limeAccent,
      threshold: 800,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsYellow,
      primary: Colors.yellow,
      accent: Colors.yellowAccent,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsAmber,
      primary: Colors.amber,
      accent: Colors.amberAccent,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsOrange,
      primary: Colors.orange,
      accent: Colors.orangeAccent,
      threshold: 700,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsDeepOrange,
      primary: Colors.deepOrange,
      accent: Colors.deepOrangeAccent,
      threshold: 400,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsBrown,
      primary: Colors.brown,
      threshold: 200,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsGrey,
      primary: Colors.grey,
      threshold: 500,
    ),
    _Palette(
      name: GalleryLocalizations.of(context).colorsBlueGrey,
      primary: Colors.blueGrey,
      threshold: 500,
    ),
  ];
}

class _ColorItem extends StatelessWidget {
  const _ColorItem({
    Key key,
    @required this.index,
    @required this.color,
    this.prefix = '',
  })  : assert(index != null),
        assert(color != null),
        assert(prefix != null),
        super(key: key);

  final int index;
  final Color color;
  final String prefix;

  String get _colorString =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      child: Container(
        height: kColorItemHeight,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$prefix$index'),
            Flexible(child: Text(_colorString)),
          ],
        ),
      ),
    );
  }
}

class PaletteTabView extends StatelessWidget {
  PaletteTabView({
    Key key,
    @required this.colors,
  })  : assert(colors != null),
        super(key: key);

  final _Palette colors;
  static const primaryKeys = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];
  static const accentKeys = <int>[100, 200, 400, 700];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle whiteTextStyle = textTheme.body1.copyWith(
      color: Colors.white,
    );
    final TextStyle blackTextStyle = textTheme.body1.copyWith(
      color: Colors.black,
    );
    return Scrollbar(
      child: ListView(
        itemExtent: kColorItemHeight,
        children: [
          for (final key in primaryKeys)
            DefaultTextStyle(
              style: key > colors.threshold ? whiteTextStyle : blackTextStyle,
              child: _ColorItem(index: key, color: colors.primary[key]),
            ),
          if (colors.accent != null)
            for (final key in accentKeys)
              DefaultTextStyle(
                style: key > colors.threshold ? whiteTextStyle : blackTextStyle,
                child: _ColorItem(
                  index: key,
                  color: colors.accent[key],
                  prefix: 'A',
                ),
              ),
        ],
      ),
    );
  }
}

class ColorsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final palettes = _allPalettes(context);
    return DefaultTabController(
      length: palettes.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(GalleryLocalizations.of(context).demoColorsTitle),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              for (final palette in palettes) Tab(text: palette.name),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (final palette in palettes) PaletteTabView(colors: palette),
          ],
        ),
      ),
    );
  }
}

// END
