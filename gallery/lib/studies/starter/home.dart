// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';

const appBarDesktopHeight = 128.0;

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    this.firstFocusNode,
    this.lastFocusNode,
  }) : super(key: key);

  final FocusNode firstFocusNode;
  final FocusNode lastFocusNode;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);
    final body = SafeArea(
      child: Padding(
        padding: isDesktop
            ? EdgeInsets.symmetric(horizontal: 72, vertical: 48)
            : EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              GalleryLocalizations.of(context).starterAppGenericHeadline,
              style: textTheme.headline3.copyWith(
                color: colorScheme.onSecondary,
              ),
            ),
            SizedBox(height: 10),
            Text(
              GalleryLocalizations.of(context).starterAppGenericSubtitle,
              style: textTheme.subtitle1,
            ),
            SizedBox(height: 48),
            Text(
              GalleryLocalizations.of(context).starterAppGenericBody,
              style: textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );

    if (isDesktop) {
      return Row(
        children: [
          ListDrawer(
            lastFocusNode: lastFocusNode,
          ),
          VerticalDivider(width: 1),
          Expanded(
            child: Scaffold(
              appBar: AdaptiveAppBar(
                firstFocusNode: firstFocusNode,
                isDesktop: true,
              ),
              body: body,
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {},
                label: Text(
                  GalleryLocalizations.of(context).starterAppGenericButton,
                  style: TextStyle(color: colorScheme.onSecondary),
                ),
                icon: Icon(Icons.add, color: colorScheme.onSecondary),
                tooltip: GalleryLocalizations.of(context).starterAppTooltipAdd,
              ),
            ),
          ),
        ],
      );
    } else {
      return Scaffold(
        appBar: AdaptiveAppBar(
          firstFocusNode: firstFocusNode,
        ),
        body: body,
        drawer: ListDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: GalleryLocalizations.of(context).starterAppTooltipAdd,
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          focusNode: lastFocusNode,
        ),
      );
    }
  }
}

class AdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdaptiveAppBar({
    Key key,
    this.isDesktop = false,
    this.firstFocusNode,
  }) : super(key: key);

  final bool isDesktop;
  final FocusNode firstFocusNode;

  @override
  Size get preferredSize => isDesktop
      ? const Size.fromHeight(appBarDesktopHeight)
      : const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return AppBar(
      title: isDesktop
          ? null
          : Text(GalleryLocalizations.of(context).starterAppGenericTitle),
      bottom: isDesktop
          ? PreferredSize(
              preferredSize: const Size.fromHeight(26),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                margin: EdgeInsetsDirectional.fromSTEB(72, 0, 0, 22),
                child: Text(
                  GalleryLocalizations.of(context).starterAppGenericTitle,
                  style: themeData.textTheme.headline6.copyWith(
                    color: themeData.colorScheme.onPrimary,
                  ),
                ),
              ),
            )
          : null,
      actions: [
        IconButton(
          icon: const Icon(Icons.share),
          tooltip: GalleryLocalizations.of(context).starterAppTooltipShare,
          onPressed: () {},
          focusNode: firstFocusNode,
        ),
        IconButton(
          icon: const Icon(Icons.favorite),
          tooltip: GalleryLocalizations.of(context).starterAppTooltipFavorite,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: GalleryLocalizations.of(context).starterAppTooltipSearch,
          onPressed: () {},
        ),
      ],
    );
  }
}

class ListDrawer extends StatefulWidget {
  const ListDrawer({Key key, this.lastFocusNode}) : super(key: key);

  final FocusNode lastFocusNode;

  @override
  _ListDrawerState createState() => _ListDrawerState();
}

class _ListDrawerState extends State<ListDrawer> {
  static final numItems = 9;

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                GalleryLocalizations.of(context).starterAppTitle,
                style: textTheme.headline6,
              ),
              subtitle: Text(
                GalleryLocalizations.of(context).starterAppGenericSubtitle,
                style: textTheme.bodyText2,
              ),
            ),
            Divider(),
            ...Iterable<int>.generate(numItems).toList().map((i) {
              final listTile = ListTile(
                enabled: true,
                selected: i == selectedItem,
                leading: Icon(Icons.favorite),
                title: Text(
                  GalleryLocalizations.of(context).starterAppDrawerItem(i + 1),
                ),
                onTap: () {
                  setState(() {
                    selectedItem = i;
                  });
                },
              );

              if (i == numItems - 1 && widget.lastFocusNode != null) {
                return Focus(
                  focusNode: widget.lastFocusNode,
                  child: listTile,
                );
              } else {
                return listTile;
              }
            }),
          ],
        ),
      ),
    );
  }
}
