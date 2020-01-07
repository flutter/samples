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
    final styleItems = <Widget>[
      _TextStyleItem(
        name: 'Display 4',
        style: textTheme.display4,
        text: 'Light 96sp',
      ),
      _TextStyleItem(
        name: 'Display 3',
        style: textTheme.display3,
        text: 'Light 60sp',
      ),
      _TextStyleItem(
        name: 'Display 2',
        style: textTheme.display2,
        text: 'Regular 48sp',
      ),
      _TextStyleItem(
        name: 'Display 1',
        style: textTheme.display1,
        text: 'Regular 34sp',
      ),
      _TextStyleItem(
        name: 'Headline',
        style: textTheme.headline,
        text: 'Regular 24sp',
      ),
      _TextStyleItem(
        name: 'Title',
        style: textTheme.title,
        text: 'Medium 20sp',
      ),
      _TextStyleItem(
        name: 'Subhead',
        style: textTheme.subhead,
        text: 'Regular 16sp',
      ),
      _TextStyleItem(
        name: 'Subtitle',
        style: textTheme.subtitle,
        text: 'Medium 14sp',
      ),
      _TextStyleItem(
        name: 'Body 1',
        style: textTheme.body1,
        text: 'Regular 16sp',
      ),
      _TextStyleItem(
        name: 'Body 2',
        style: textTheme.body2,
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
