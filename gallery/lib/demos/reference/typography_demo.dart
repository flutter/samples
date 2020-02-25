// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN typographyDemo

class _TextStyleItem extends StatelessWidget {
  const _TextStyleItem({
    Key key,
    @required this.name,
    @required this.style,
    @required this.text,
  })  : assert(name != null),
        assert(style != null),
        assert(text != null),
        super(key: key);

  final String name;
  final TextStyle style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 72,
            child: Text(name, style: Theme.of(context).textTheme.caption),
          ),
          Expanded(
            child: Text(text, style: style),
          ),
        ],
      ),
    );
  }
}

class TypographyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final styleItems = [
      _TextStyleItem(
        name: 'Headline 1',
        style: textTheme.headline1,
        text: 'Light 96sp',
      ),
      _TextStyleItem(
        name: 'Headline 2',
        style: textTheme.headline2,
        text: 'Light 60sp',
      ),
      _TextStyleItem(
        name: 'Headline 3',
        style: textTheme.headline3,
        text: 'Regular 48sp',
      ),
      _TextStyleItem(
        name: 'Headline 4',
        style: textTheme.headline4,
        text: 'Regular 34sp',
      ),
      _TextStyleItem(
        name: 'Headline 5',
        style: textTheme.headline5,
        text: 'Regular 24sp',
      ),
      _TextStyleItem(
        name: 'Headline 6',
        style: textTheme.headline6,
        text: 'Medium 20sp',
      ),
      _TextStyleItem(
        name: 'Subtitle 1',
        style: textTheme.subtitle1,
        text: 'Regular 16sp',
      ),
      _TextStyleItem(
        name: 'Subtitle 2',
        style: textTheme.subtitle2,
        text: 'Medium 14sp',
      ),
      _TextStyleItem(
        name: 'Body Text 2',
        style: textTheme.bodyText2,
        text: 'Regular 16sp',
      ),
      _TextStyleItem(
        name: 'Body Text 1',
        style: textTheme.bodyText1,
        text: 'Regular 14sp',
      ),
      _TextStyleItem(
        name: 'Button',
        style: textTheme.button,
        text: 'MEDIUM (ALL CAPS) 14sp',
      ),
      _TextStyleItem(
        name: 'Caption',
        style: textTheme.caption,
        text: 'Regular 12sp',
      ),
      _TextStyleItem(
        name: 'Overline',
        style: textTheme.overline,
        text: 'REGULAR (ALL CAPS) 10sp',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(GalleryLocalizations.of(context).demoTypographyTitle),
      ),
      body: Scrollbar(child: ListView(children: styleItems)),
    );
  }
}

// END
