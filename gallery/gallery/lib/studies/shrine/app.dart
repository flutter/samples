// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/shrine/backdrop.dart';
import 'package:gallery/studies/shrine/category_menu_page.dart';
import 'package:gallery/studies/shrine/expanding_bottom_sheet.dart';
import 'package:gallery/studies/shrine/home.dart';
import 'package:gallery/studies/shrine/login.dart';
import 'package:gallery/studies/shrine/model/app_state_model.dart';
import 'package:gallery/studies/shrine/page_status.dart';
import 'package:gallery/studies/shrine/scrim.dart';
import 'package:gallery/studies/shrine/supplemental/layout_cache.dart';
import 'package:gallery/studies/shrine/theme.dart';
import 'package:scoped_model/scoped_model.dart';

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key key, this.navigatorKey}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> with TickerProviderStateMixin {
  // Controller to coordinate both the opening/closing of backdrop and sliding
  // of expanding bottom sheet
  AnimationController _controller;

  // Animation Controller for expanding/collapsing the cart menu.
  AnimationController _expandingController;

  AppStateModel _model;

  Map<String, List<List<int>>> _layouts = {};

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
      value: 1,
    );
    _expandingController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _model = AppStateModel()..loadProducts();
  }

  @override
  void dispose() {
    _controller.dispose();
    _expandingController.dispose();
    super.dispose();
  }

  Widget mobileBackdrop() {
    return Backdrop(
      frontLayer: const ProductPage(),
      backLayer: CategoryMenuPage(onCategoryTap: () => _controller.forward()),
      frontTitle: const Text('SHRINE'),
      backTitle: Text(GalleryLocalizations.of(context).shrineMenuCaption),
      controller: _controller,
    );
  }

  Widget desktopBackdrop() {
    return DesktopBackdrop(
      frontLayer: ProductPage(),
      backLayer: CategoryMenuPage(),
    );
  }

  // Closes the bottom sheet if it is open.
  Future<bool> _onWillPop() async {
    final status = _expandingController.status;
    if (status == AnimationStatus.completed ||
        status == AnimationStatus.forward) {
      _expandingController.reverse();
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = isDisplayDesktop(context);

    final Widget backdrop = isDesktop ? desktopBackdrop() : mobileBackdrop();

    return ScopedModel<AppStateModel>(
      model: _model,
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: MaterialApp(
          navigatorKey: widget.navigatorKey,
          title: 'Shrine',
          debugShowCheckedModeBanner: false,
          home: LayoutCache(
            layouts: _layouts,
            child: PageStatus(
              menuController: _controller,
              cartController: _expandingController,
              child: HomePage(
                backdrop: backdrop,
                scrim: Scrim(controller: _expandingController),
                expandingBottomSheet: ExpandingBottomSheet(
                  hideController: _controller,
                  expandingController: _expandingController,
                ),
              ),
            ),
          ),
          initialRoute: '/login',
          onGenerateRoute: _getRoute,
          theme: shrineTheme.copyWith(
            platform: GalleryOptions.of(context).platform,
          ),
          // L10n settings.
          localizationsDelegates: GalleryLocalizations.localizationsDelegates,
          supportedLocales: GalleryLocalizations.supportedLocales,
          locale: GalleryOptions.of(context).locale,
        ),
      ),
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name != '/login') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (context) => LoginPage(),
    fullscreenDialog: true,
  );
}
