// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN bottomAppBarDemo

class BottomAppBarDemo extends StatefulWidget {
  @override
  State createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  var _showFab = true;
  var _showNotch = true;
  var _fabLocation = FloatingActionButtonLocation.endDocked;

  void _onShowNotchChanged(bool value) {
    setState(() {
      _showNotch = value;
    });
  }

  void _onShowFabChanged(bool value) {
    setState(() {
      _showFab = value;
    });
  }

  void _onFabLocationChanged(FloatingActionButtonLocation value) {
    setState(() {
      _fabLocation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GalleryLocalizations.of(context).demoBottomAppBarTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          SwitchListTile(
            title: Text(
              GalleryLocalizations.of(context).demoFloatingButtonTitle,
            ),
            value: _showFab,
            onChanged: _onShowFabChanged,
          ),
          SwitchListTile(
            title: Text(GalleryLocalizations.of(context).bottomAppBarNotch),
            value: _showNotch,
            onChanged: _onShowNotchChanged,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(GalleryLocalizations.of(context).bottomAppBarPosition),
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text(
              GalleryLocalizations.of(context).bottomAppBarPositionDockedEnd,
            ),
            value: FloatingActionButtonLocation.endDocked,
            groupValue: _fabLocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text(
              GalleryLocalizations.of(context).bottomAppBarPositionDockedCenter,
            ),
            value: FloatingActionButtonLocation.centerDocked,
            groupValue: _fabLocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text(
              GalleryLocalizations.of(context).bottomAppBarPositionFloatingEnd,
            ),
            value: FloatingActionButtonLocation.endFloat,
            groupValue: _fabLocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text(
              GalleryLocalizations.of(context)
                  .bottomAppBarPositionFloatingCenter,
            ),
            value: FloatingActionButtonLocation.centerFloat,
            groupValue: _fabLocation,
            onChanged: _onFabLocationChanged,
          ),
        ],
      ),
      floatingActionButton: _showFab
          ? FloatingActionButton(
              onPressed: () {
                print('Floating action button pressed');
              },
              child: Icon(Icons.add),
              tooltip: GalleryLocalizations.of(context).buttonTextCreate,
            )
          : null,
      floatingActionButtonLocation: _fabLocation,
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: _fabLocation,
        shape: _showNotch ? CircularNotchedRectangle() : null,
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation,
    this.shape,
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;

  static final centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: [
            IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(Icons.menu),
              onPressed: () {
                print('Menu button pressed');
              },
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: GalleryLocalizations.of(context).starterAppTooltipSearch,
              icon: const Icon(Icons.search),
              onPressed: () {
                print('Search button pressed');
              },
            ),
            IconButton(
              tooltip:
                  GalleryLocalizations.of(context).starterAppTooltipFavorite,
              icon: const Icon(Icons.favorite),
              onPressed: () {
                print('Favorite button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// END
