// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

enum ChipDemoType {
  action,
  choice,
  filter,
  input,
}

class ChipDemo extends StatelessWidget {
  const ChipDemo({Key key, this.type}) : super(key: key);

  final ChipDemoType type;

  String _title(BuildContext context) {
    switch (type) {
      case ChipDemoType.action:
        return GalleryLocalizations.of(context).demoActionChipTitle;
      case ChipDemoType.choice:
        return GalleryLocalizations.of(context).demoChoiceChipTitle;
      case ChipDemoType.filter:
        return GalleryLocalizations.of(context).demoFilterChipTitle;
      case ChipDemoType.input:
        return GalleryLocalizations.of(context).demoInputChipTitle;
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    Widget buttons;
    switch (type) {
      case ChipDemoType.action:
        buttons = _ActionChipDemo();
        break;
      case ChipDemoType.choice:
        buttons = _ChoiceChipDemo();
        break;
      case ChipDemoType.filter:
        buttons = _FilterChipDemo();
        break;
      case ChipDemoType.input:
        buttons = _InputChipDemo();
        break;
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(_title(context)),
      ),
      body: buttons,
    );
  }
}

// BEGIN chipDemoAction

class _ActionChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        onPressed: () {},
        avatar: Icon(
          Icons.brightness_5,
          color: Colors.black54,
        ),
        label: Text(GalleryLocalizations.of(context).chipTurnOnLights),
      ),
    );
  }
}

// END

// BEGIN chipDemoChoice

class _ChoiceChipDemo extends StatefulWidget {
  @override
  _ChoiceChipDemoState createState() => _ChoiceChipDemoState();
}

class _ChoiceChipDemoState extends State<_ChoiceChipDemo> {
  int indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          ChoiceChip(
            label: Text(GalleryLocalizations.of(context).chipSmall),
            selected: indexSelected == 0,
            onSelected: (value) {
              setState(() {
                indexSelected = value ? 0 : -1;
              });
            },
          ),
          SizedBox(width: 8),
          ChoiceChip(
            label: Text(GalleryLocalizations.of(context).chipMedium),
            selected: indexSelected == 1,
            onSelected: (value) {
              setState(() {
                indexSelected = value ? 1 : -1;
              });
            },
          ),
          SizedBox(width: 8),
          ChoiceChip(
            label: Text(GalleryLocalizations.of(context).chipLarge),
            selected: indexSelected == 2,
            onSelected: (value) {
              setState(() {
                indexSelected = value ? 2 : -1;
              });
            },
          ),
        ],
      ),
    );
  }
}

// END

// BEGIN chipDemoFilter

class _FilterChipDemo extends StatefulWidget {
  @override
  _FilterChipDemoState createState() => _FilterChipDemoState();
}

class _FilterChipDemoState extends State<_FilterChipDemo> {
  bool isSelectedElevator = false;
  bool isSelectedWasher = false;
  bool isSelectedFireplace = false;

  @override
  Widget build(BuildContext context) {
    final chips = [
      FilterChip(
        label: Text(GalleryLocalizations.of(context).chipElevator),
        selected: isSelectedElevator,
        onSelected: (value) {
          setState(() {
            isSelectedElevator = !isSelectedElevator;
          });
        },
      ),
      FilterChip(
        label: Text(GalleryLocalizations.of(context).chipWasher),
        selected: isSelectedWasher,
        onSelected: (value) {
          setState(() {
            isSelectedWasher = !isSelectedWasher;
          });
        },
      ),
      FilterChip(
        label: Text(GalleryLocalizations.of(context).chipFireplace),
        selected: isSelectedFireplace,
        onSelected: (value) {
          setState(() {
            isSelectedFireplace = !isSelectedFireplace;
          });
        },
      ),
    ];

    return Center(
      child: Wrap(
        children: [
          for (final chip in chips)
            Padding(
              padding: const EdgeInsets.all(4),
              child: chip,
            )
        ],
      ),
    );
  }
}

// END

// BEGIN chipDemoInput

class _InputChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InputChip(
        onPressed: () {},
        onDeleted: () {},
        avatar: Icon(
          Icons.directions_bike,
          size: 20,
          color: Colors.black54,
        ),
        deleteIconColor: Colors.black54,
        label: Text(GalleryLocalizations.of(context).chipBiking),
      ),
    );
  }
}

// END
