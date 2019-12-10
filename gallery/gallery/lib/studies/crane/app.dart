// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/crane/backdrop.dart';
import 'package:gallery/studies/crane/eat_form.dart';
import 'package:gallery/studies/crane/fly_form.dart';
import 'package:gallery/studies/crane/sleep_form.dart';
import 'package:gallery/studies/crane/theme.dart';

class CraneApp extends StatefulWidget {
  const CraneApp({Key key, this.navigatorKey}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  _CraneAppState createState() => _CraneAppState();
}

class _CraneAppState extends State<CraneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: widget.navigatorKey,
      title: 'Crane',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      supportedLocales: GalleryLocalizations.supportedLocales,
      locale: GalleryOptions.of(context).locale,
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      theme: craneTheme.copyWith(
        platform: GalleryOptions.of(context).platform,
      ),
      darkTheme: craneTheme.copyWith(
        platform: GalleryOptions.of(context).platform,
      ),
      home: ApplyTextOptions(
        child: Backdrop(
          frontLayer: Container(),
          backLayer: [
            FlyForm(),
            SleepForm(),
            EatForm(),
          ],
          frontTitle: Text('CRANE'),
          backTitle: Text('MENU'),
        ),
      ),
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name != '/') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (context) => CraneApp(),
    fullscreenDialog: true,
  );
}
