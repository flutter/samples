// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/layout/text_scale.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/fortnightly/shared.dart';

const fortnightlyTitle = 'Fortnightly';

class FortnightlyApp extends StatelessWidget {
  const FortnightlyApp({Key key, this.navigatorKey}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    final home = isDisplayDesktop(context)
        ? _FortnightlyHomeDesktop()
        : _FortnightlyHomeMobile();
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: buildTheme(context).copyWith(
        platform: GalleryOptions.of(context).platform,
      ),
      home: ApplyTextOptions(child: home),
      // L10n settings.
      localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      supportedLocales: GalleryLocalizations.supportedLocales,
      locale: GalleryOptions.of(context).locale,
    );
  }
}

class _FortnightlyHomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: NavigationMenu(isCloseable: true),
        ),
      ),
      appBar: AppBar(
        title: Semantics(
          label: fortnightlyTitle,
          child: Image.asset(
            'assets/fortnightly/fortnightly_title.png',
            excludeFromSemantics: true,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: GalleryLocalizations.of(context).shrineTooltipSearch,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            HashtagBar(),
            for (final item in buildArticlePreviewItems(context))
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: item,
              ),
          ],
        ),
      ),
    );
  }
}

class _FortnightlyHomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuWidth = 200.0;
    final spacer = SizedBox(width: 20);
    final headerHeight = 40 * reducedTextScale(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: headerHeight,
              child: Row(
                children: [
                  Container(
                    width: menuWidth,
                    alignment: AlignmentDirectional.centerStart,
                    margin: EdgeInsets.only(left: 12),
                    child: Semantics(
                      label: fortnightlyTitle,
                      child: Image.asset(
                        'assets/fortnightly/fortnightly_title.png',
                        excludeFromSemantics: true,
                      ),
                    ),
                  ),
                  spacer,
                  Flexible(
                    flex: 2,
                    child: HashtagBar(),
                  ),
                  spacer,
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        tooltip: GalleryLocalizations.of(context)
                            .shrineTooltipSearch,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  SizedBox(
                    width: menuWidth,
                    child: NavigationMenu(),
                  ),
                  spacer,
                  Flexible(
                    flex: 2,
                    child: ListView(
                      children: buildArticlePreviewItems(context),
                    ),
                  ),
                  spacer,
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: ListView(
                      children: [
                        ...buildStockItems(context),
                        SizedBox(height: 32),
                        ...buildVideoPreviewItems(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
