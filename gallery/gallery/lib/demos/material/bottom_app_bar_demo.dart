// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  State createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  bool _showFab = true;
  bool _showNotch = true;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;

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
        title: const Text('Bottom app bar'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          SwitchListTile(
            title: Text('Floating Action Button'),
            value: _showFab,
            onChanged: _onShowFabChanged,
          ),
          SwitchListTile(
            title: Text('Notch'),
            value: _showNotch,
            onChanged: _onShowNotchChanged,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Floating Action Button Position'),
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text('Docked - End'),
            value: FloatingActionButtonLocation.endDocked,
            groupValue: _fabLocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text('Docked - Center'),
            value: FloatingActionButtonLocation.centerDocked,
            groupValue: _fabLocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text('Floating - End'),
            value: FloatingActionButtonLocation.endFloat,
            groupValue: _fabLocation,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text('Floating - Center'),
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

  static final List<FloatingActionButtonLocation> kCenterLocations =
      <FloatingActionButtonLocation>[
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
              tooltip: 'Menu',
              icon: const Icon(Icons.menu),
              onPressed: () {
                print('Menu button pressed');
              },
            ),
            if (kCenterLocations.contains(fabLocation))
              const Expanded(child: SizedBox()),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {
                print('Search button pressed');
              },
            ),
            IconButton(
              tooltip: 'More',
              icon: Icon(
                Theme.of(context).platform == TargetPlatform.iOS
                    ? Icons.more_horiz
                    : Icons.more_vert,
              ),
              onPressed: () {
                print('More button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
