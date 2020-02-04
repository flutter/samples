// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:meta/meta.dart';

import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/crane/border_tab_indicator.dart';
import 'package:gallery/studies/crane/backlayer.dart';
import 'package:gallery/studies/crane/colors.dart';
import 'package:gallery/studies/crane/header_form.dart';
import 'package:gallery/studies/crane/item_cards.dart';

class _FrontLayer extends StatelessWidget {
  const _FrontLayer({
    Key key,
    this.title,
    this.index,
  }) : super(key: key);

  final String title;
  final int index;

  static const frontLayerBorderRadius = 16.0;

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final isSmallDesktop = isDisplaySmallDesktop(context);

    return DefaultFocusTraversal(
      policy: ReadingOrderTraversalPolicy(),
      child: PhysicalShape(
        elevation: 16,
        color: cranePrimaryWhite,
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(frontLayerBorderRadius),
              topRight: Radius.circular(frontLayerBorderRadius),
            ),
          ),
        ),
        child: ListView(
          padding: isDesktop
              ? EdgeInsets.symmetric(
                  horizontal:
                      isSmallDesktop ? appPaddingSmall : appPaddingLarge,
                  vertical: 22)
              : EdgeInsets.all(20),
          children: [
            Text(title, style: Theme.of(context).textTheme.subtitle),
            SizedBox(height: 20),
            ItemCards(index: index),
          ],
        ),
      ),
    );
  }
}

/// Builds a Backdrop.
///
/// A Backdrop widget has two layers, front and back. The front layer is shown
/// by default, and slides down to show the back layer, from which a user
/// can make a selection. The user can also configure the titles for when the
/// front or back layer is showing.
class Backdrop extends StatefulWidget {
  final Widget frontLayer;
  final List<BackLayerItem> backLayerItems;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    @required this.frontLayer,
    @required this.backLayerItems,
    @required this.frontTitle,
    @required this.backTitle,
  })  : assert(frontLayer != null),
        assert(backLayerItems != null),
        assert(frontTitle != null),
        assert(backTitle != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop> with TickerProviderStateMixin {
  TabController _tabController;
  Animation<Offset> _flyLayerOffset;
  Animation<Offset> _sleepLayerOffset;
  Animation<Offset> _eatLayerOffset;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Offsets to create a gap between front layers.
    _flyLayerOffset = _tabController.animation
        .drive(Tween<Offset>(begin: Offset(0, 0), end: Offset(-0.05, 0)));

    _sleepLayerOffset = _tabController.animation
        .drive(Tween<Offset>(begin: Offset(0.05, 0), end: Offset(0, 0)));

    _eatLayerOffset = _tabController.animation
        .drive(Tween<Offset>(begin: Offset(0.10, 0), end: Offset(0.05, 0)));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabs(int tabIndex) {
    _tabController.animateTo(tabIndex,
        duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final textScaleFactor = GalleryOptions.of(context).textScaleFactor(context);

    return Material(
      color: cranePurple800,
      child: Padding(
        padding: EdgeInsets.only(top: 12),
        child: DefaultFocusTraversal(
          policy: ReadingOrderTraversalPolicy(),
          child: Scaffold(
            backgroundColor: cranePurple800,
            appBar: AppBar(
              brightness: Brightness.dark,
              elevation: 0,
              titleSpacing: 0,
              flexibleSpace: CraneAppBar(
                tabController: _tabController,
                tabHandler: _handleTabs,
              ),
            ),
            body: FocusScope(
              child: Stack(
                children: [
                  BackLayer(
                    tabController: _tabController,
                    backLayerItems: widget.backLayerItems,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: isDesktop
                          ? (isDisplaySmallDesktop(context)
                                  ? textFieldHeight * 2
                                  : textFieldHeight) +
                              20 * textScaleFactor / 2
                          : 175 + 140 * textScaleFactor / 2,
                    ),
                    child: TabBarView(
                      physics: isDesktop
                          ? NeverScrollableScrollPhysics()
                          : null, // use default TabBarView physics
                      controller: _tabController,
                      children: [
                        SlideTransition(
                          position: _flyLayerOffset,
                          child: _FrontLayer(
                            title: GalleryLocalizations.of(context)
                                .craneFlySubhead,
                            index: 0,
                          ),
                        ),
                        SlideTransition(
                          position: _sleepLayerOffset,
                          child: _FrontLayer(
                            title: GalleryLocalizations.of(context)
                                .craneSleepSubhead,
                            index: 1,
                          ),
                        ),
                        SlideTransition(
                          position: _eatLayerOffset,
                          child: _FrontLayer(
                            title: GalleryLocalizations.of(context)
                                .craneEatSubhead,
                            index: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CraneAppBar extends StatefulWidget {
  final Function(int) tabHandler;
  final TabController tabController;

  const CraneAppBar({Key key, this.tabHandler, this.tabController})
      : super(key: key);

  @override
  _CraneAppBarState createState() => _CraneAppBarState();
}

class _CraneAppBarState extends State<CraneAppBar> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final isSmallDesktop = isDisplaySmallDesktop(context);
    final textScaleFactor = GalleryOptions.of(context).textScaleFactor(context);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal:
              isDesktop && !isSmallDesktop ? appPaddingLarge : appPaddingSmall,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExcludeSemantics(
              child: Image.asset(
                'assets/crane/logo/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 24),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    splashColor: Colors.transparent,
                  ),
                  child: TabBar(
                    indicator: BorderTabIndicator(
                      indicatorHeight: isDesktop ? 28 : 32,
                      textScaleFactor: textScaleFactor,
                    ),
                    controller: widget.tabController,
                    labelPadding: isDesktop
                        ? const EdgeInsets.symmetric(horizontal: 32)
                        : EdgeInsets.zero,
                    isScrollable: isDesktop, // left-align tabs on desktop
                    labelStyle: Theme.of(context).textTheme.button,
                    labelColor: cranePrimaryWhite,
                    unselectedLabelColor: cranePrimaryWhite.withOpacity(.6),
                    onTap: (index) => widget.tabController.animateTo(
                      index,
                      duration: const Duration(milliseconds: 300),
                    ),
                    tabs: [
                      Tab(text: GalleryLocalizations.of(context).craneFly),
                      Tab(text: GalleryLocalizations.of(context).craneSleep),
                      Tab(text: GalleryLocalizations.of(context).craneEat),
                    ],
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
