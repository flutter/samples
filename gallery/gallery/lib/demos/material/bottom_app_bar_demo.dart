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
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  // FAB shape

  static const _ChoiceValue<bool> kShowFabTrue = _ChoiceValue<bool>(
    title: 'On',
    value: true,
  );

  static const _ChoiceValue<bool> kShowFabFalse = _ChoiceValue<bool>(
    title: 'Off',
    value: false,
  );

  // Notch

  static const _ChoiceValue<bool> kShowNotchTrue = _ChoiceValue<bool>(
    title: 'On',
    value: true,
  );

  static const _ChoiceValue<bool> kShowNotchFalse = _ChoiceValue<bool>(
    title: 'Off',
    value: false,
  );

  // FAB Position

  static const _ChoiceValue<FloatingActionButtonLocation> kFabEndDocked =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Docked - End',
    value: FloatingActionButtonLocation.endDocked,
  );

  static const _ChoiceValue<FloatingActionButtonLocation> kFabCenterDocked =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Docked - Center',
    value: FloatingActionButtonLocation.centerDocked,
  );

  static const _ChoiceValue<FloatingActionButtonLocation> kFabEndFloat =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Floating - End',
    value: FloatingActionButtonLocation.endFloat,
  );

  static const _ChoiceValue<FloatingActionButtonLocation> kFabCenterFloat =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Floating - Center',
    value: FloatingActionButtonLocation.centerFloat,
  );

  _ChoiceValue<bool> _showFab = kShowFabTrue;
  _ChoiceValue<bool> _showNotch = kShowNotchTrue;
  _ChoiceValue<FloatingActionButtonLocation> _fabLocation = kFabEndDocked;

  void _onShowNotchChanged(_ChoiceValue<bool> value) {
    setState(() {
      _showNotch = value;
    });
  }

  void _onShowFabChanged(_ChoiceValue<bool> value) {
    setState(() {
      _showFab = value;
    });
  }

  void _onFabLocationChanged(_ChoiceValue<FloatingActionButtonLocation> value) {
    setState(() {
      _fabLocation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Bottom app bar'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          const _Heading('FAB'),
          _RadioItem<bool>(kShowFabTrue, _showFab, _onShowFabChanged),
          _RadioItem<bool>(kShowFabFalse, _showFab, _onShowFabChanged),
          const Divider(),
          const _Heading('Notch'),
          _RadioItem<bool>(kShowNotchTrue, _showNotch, _onShowNotchChanged),
          _RadioItem<bool>(kShowNotchFalse, _showNotch, _onShowNotchChanged),
          const Divider(),
          const _Heading('FAB Position'),
          _RadioItem<FloatingActionButtonLocation>(
              kFabEndDocked, _fabLocation, _onFabLocationChanged),
          _RadioItem<FloatingActionButtonLocation>(
              kFabCenterDocked, _fabLocation, _onFabLocationChanged),
          _RadioItem<FloatingActionButtonLocation>(
              kFabEndFloat, _fabLocation, _onFabLocationChanged),
          _RadioItem<FloatingActionButtonLocation>(
              kFabCenterFloat, _fabLocation, _onFabLocationChanged),
        ],
      ),
      floatingActionButton: _showFab.value
          ? FloatingActionButton(
              onPressed: () {
                print('Floating action button pressed');
              },
              child: Icon(Icons.add),
              tooltip: GalleryLocalizations.of(context).buttonTextCreate,
            )
          : null,
      floatingActionButtonLocation: _fabLocation.value,
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: _fabLocation.value,
        shape: _showNotch.value ? CircularNotchedRectangle() : null,
      ),
    );
  }
}

class _ChoiceValue<T> {
  const _ChoiceValue({this.value, this.title});

  final T value;
  final String title;
}

class _RadioItem<T> extends StatelessWidget {
  const _RadioItem(this.value, this.groupValue, this.onChanged);

  final _ChoiceValue<T> value;
  final _ChoiceValue<T> groupValue;
  final ValueChanged<_ChoiceValue<T>> onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: 56.0,
      padding: const EdgeInsetsDirectional.only(start: 16.0),
      alignment: AlignmentDirectional.centerStart,
      child: MergeSemantics(
        child: Row(
          children: <Widget>[
            Radio<_ChoiceValue<T>>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
            Expanded(
              child: Semantics(
                container: true,
                button: true,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    onChanged(value);
                  },
                  child: Text(
                    value.title,
                    style: theme.textTheme.subhead,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: 48.0,
      padding: const EdgeInsetsDirectional.only(start: 56.0),
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        text,
        style: theme.textTheme.body1.copyWith(
          color: theme.primaryColor,
        ),
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
