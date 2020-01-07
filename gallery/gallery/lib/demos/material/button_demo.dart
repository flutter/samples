// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

enum ButtonDemoType {
  flat,
  raised,
  outline,
  toggle,
  floating,
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key, this.type}) : super(key: key);

  final ButtonDemoType type;

  String _title(BuildContext context) {
    switch (type) {
      case ButtonDemoType.flat:
        return GalleryLocalizations.of(context).demoFlatButtonTitle;
      case ButtonDemoType.raised:
        return GalleryLocalizations.of(context).demoRaisedButtonTitle;
      case ButtonDemoType.outline:
        return GalleryLocalizations.of(context).demoOutlineButtonTitle;
      case ButtonDemoType.toggle:
        return GalleryLocalizations.of(context).demoToggleButtonTitle;
      case ButtonDemoType.floating:
        return GalleryLocalizations.of(context).demoFloatingButtonTitle;
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    Widget buttons;
    switch (type) {
      case ButtonDemoType.flat:
        buttons = _FlatButtonDemo();
        break;
      case ButtonDemoType.raised:
        buttons = _RaisedButtonDemo();
        break;
      case ButtonDemoType.outline:
        buttons = _OutlineButtonDemo();
        break;
      case ButtonDemoType.toggle:
        buttons = _ToggleButtonsDemo();
        break;
      case ButtonDemoType.floating:
        buttons = _FloatingActionButtonDemo();
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

// BEGIN buttonDemoFlat

class _FlatButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FlatButton(
            child: Text(GalleryLocalizations.of(context).buttonText),
            onPressed: () {},
          ),
          SizedBox(height: 12),
          FlatButton.icon(
            icon: const Icon(Icons.add, size: 18),
            label: Text(GalleryLocalizations.of(context).buttonText),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// END

// BEGIN buttonDemoRaised

class _RaisedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RaisedButton(
            child: Text(GalleryLocalizations.of(context).buttonText),
            onPressed: () {},
          ),
          SizedBox(height: 12),
          RaisedButton.icon(
            icon: const Icon(Icons.add, size: 18),
            label: Text(GalleryLocalizations.of(context).buttonText),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// END

// BEGIN buttonDemoOutline

class _OutlineButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlineButton(
            // TODO: Should update to OutlineButton follow material spec.
            highlightedBorderColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
            child: Text(GalleryLocalizations.of(context).buttonText),
            onPressed: () {},
          ),
          SizedBox(height: 12),
          OutlineButton.icon(
            // TODO: Should update to OutlineButton follow material spec.
            highlightedBorderColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
            icon: const Icon(Icons.add, size: 18),
            label: Text(GalleryLocalizations.of(context).buttonText),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// END

// BEGIN buttonDemoToggle

class _ToggleButtonsDemo extends StatefulWidget {
  @override
  _ToggleButtonsDemoState createState() => _ToggleButtonsDemoState();
}

class _ToggleButtonsDemoState extends State<_ToggleButtonsDemo> {
  final isSelected = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: [
          Icon(Icons.ac_unit),
          Icon(Icons.call),
          Icon(Icons.cake),
        ],
        onPressed: (index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
        isSelected: isSelected,
      ),
    );
  }
}

// END

// BEGIN buttonDemoFloating

class _FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
            tooltip: GalleryLocalizations.of(context).buttonTextCreate,
          ),
          SizedBox(height: 20),
          FloatingActionButton.extended(
            icon: const Icon(Icons.add),
            label: Text(GalleryLocalizations.of(context).buttonTextCreate),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// END
