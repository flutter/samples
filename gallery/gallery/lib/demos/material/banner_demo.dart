// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN bannerDemo

enum BannerDemoAction {
  reset,
  showMultipleActions,
  showLeading,
}

class BannerDemo extends StatefulWidget {
  @override
  _BannerDemoState createState() => _BannerDemoState();
}

class _BannerDemoState extends State<BannerDemo> {
  static const int _numItems = 20;
  bool _displayBanner = true;
  bool _showMultipleActions = true;
  bool _showLeading = true;

  void handleDemoAction(BannerDemoAction action) {
    setState(() {
      switch (action) {
        case BannerDemoAction.reset:
          _displayBanner = true;
          _showMultipleActions = true;
          _showLeading = true;
          break;
        case BannerDemoAction.showMultipleActions:
          _showMultipleActions = !_showMultipleActions;
          break;
        case BannerDemoAction.showLeading:
          _showLeading = !_showLeading;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget banner = MaterialBanner(
      content: Text(GalleryLocalizations.of(context).bannerDemoText),
      leading: _showLeading
          ? const CircleAvatar(child: Icon(Icons.access_alarm))
          : null,
      actions: [
        FlatButton(
          child: Text(GalleryLocalizations.of(context).signIn),
          onPressed: () {
            setState(() {
              _displayBanner = false;
            });
          },
        ),
        if (_showMultipleActions)
          FlatButton(
            child: Text(GalleryLocalizations.of(context).dismiss),
            onPressed: () {
              setState(() {
                _displayBanner = false;
              });
            },
          ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(GalleryLocalizations.of(context).demoBannerTitle),
        actions: [
          PopupMenuButton<BannerDemoAction>(
            onSelected: handleDemoAction,
            itemBuilder: (context) => <PopupMenuEntry<BannerDemoAction>>[
              PopupMenuItem<BannerDemoAction>(
                value: BannerDemoAction.reset,
                child:
                    Text(GalleryLocalizations.of(context).bannerDemoResetText),
              ),
              const PopupMenuDivider(),
              CheckedPopupMenuItem<BannerDemoAction>(
                value: BannerDemoAction.showMultipleActions,
                checked: _showMultipleActions,
                child: Text(
                    GalleryLocalizations.of(context).bannerDemoMultipleText),
              ),
              CheckedPopupMenuItem<BannerDemoAction>(
                value: BannerDemoAction.showLeading,
                checked: _showLeading,
                child: Text(
                    GalleryLocalizations.of(context).bannerDemoLeadingText),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: _displayBanner ? _numItems + 1 : _numItems,
          itemBuilder: (context, index) {
            if (index == 0 && _displayBanner) {
              return banner;
            }
            return ListTile(
              title: Text(
                GalleryLocalizations.of(context)
                    .starterAppDrawerItem(_displayBanner ? index : index + 1),
              ),
            );
          }),
    );
  }
}

// END
