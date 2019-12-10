// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/crane/model/destination.dart';

// TODO: localize durations

List<FlyDestination> getFlyDestinations(BuildContext context) =>
    <FlyDestination>[
      FlyDestination(
        id: 0,
        destination: GalleryLocalizations.of(context).craneFly0,
        stops: 1,
        duration: Duration(hours: 6, minutes: 15),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly0SemanticLabel,
      ),
      FlyDestination(
        id: 1,
        destination: GalleryLocalizations.of(context).craneFly1,
        stops: 0,
        duration: Duration(hours: 13, minutes: 30),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly1SemanticLabel,
      ),
      FlyDestination(
        id: 2,
        destination: GalleryLocalizations.of(context).craneFly2,
        stops: 0,
        duration: Duration(hours: 5, minutes: 16),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly2SemanticLabel,
      ),
      FlyDestination(
        id: 3,
        destination: GalleryLocalizations.of(context).craneFly3,
        stops: 2,
        duration: Duration(hours: 19, minutes: 40),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly3SemanticLabel,
      ),
      FlyDestination(
        id: 4,
        destination: GalleryLocalizations.of(context).craneFly4,
        stops: 0,
        duration: Duration(hours: 8, minutes: 24),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly4SemanticLabel,
      ),
      FlyDestination(
        id: 5,
        destination: GalleryLocalizations.of(context).craneFly5,
        stops: 1,
        duration: Duration(hours: 14, minutes: 12),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly5SemanticLabel,
      ),
      FlyDestination(
        id: 6,
        destination: GalleryLocalizations.of(context).craneFly6,
        stops: 0,
        duration: Duration(hours: 5, minutes: 24),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly6SemanticLabel,
      ),
      FlyDestination(
        id: 7,
        destination: GalleryLocalizations.of(context).craneFly7,
        stops: 1,
        duration: Duration(hours: 5, minutes: 43),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly7SemanticLabel,
      ),
      FlyDestination(
        id: 8,
        destination: GalleryLocalizations.of(context).craneFly8,
        stops: 0,
        duration: Duration(hours: 8, minutes: 25),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly8SemanticLabel,
      ),
      FlyDestination(
        id: 9,
        destination: GalleryLocalizations.of(context).craneFly9,
        stops: 1,
        duration: Duration(hours: 15, minutes: 52),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly9SemanticLabel,
      ),
      FlyDestination(
        id: 10,
        destination: GalleryLocalizations.of(context).craneFly10,
        stops: 0,
        duration: Duration(hours: 5, minutes: 57),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly10SemanticLabel,
      ),
      FlyDestination(
        id: 11,
        destination: GalleryLocalizations.of(context).craneFly11,
        stops: 1,
        duration: Duration(hours: 13, minutes: 24),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly11SemanticLabel,
      ),
      FlyDestination(
        id: 12,
        destination: GalleryLocalizations.of(context).craneFly12,
        stops: 2,
        duration: Duration(hours: 10, minutes: 20),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly12SemanticLabel,
      ),
      FlyDestination(
        id: 13,
        destination: GalleryLocalizations.of(context).craneFly13,
        stops: 0,
        duration: Duration(hours: 7, minutes: 15),
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneFly13SemanticLabel,
      ),
    ];

List<SleepDestination> getSleepDestinations(BuildContext context) =>
    <SleepDestination>[
      SleepDestination(
        id: 0,
        destination: GalleryLocalizations.of(context).craneSleep0,
        total: 2241,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep0SemanticLabel,
      ),
      SleepDestination(
        id: 1,
        destination: GalleryLocalizations.of(context).craneSleep1,
        total: 876,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep1SemanticLabel,
      ),
      SleepDestination(
        id: 2,
        destination: GalleryLocalizations.of(context).craneSleep2,
        total: 1286,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep2SemanticLabel,
      ),
      SleepDestination(
        id: 3,
        destination: GalleryLocalizations.of(context).craneSleep3,
        total: 496,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep3SemanticLabel,
      ),
      SleepDestination(
        id: 4,
        destination: GalleryLocalizations.of(context).craneSleep4,
        total: 390,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep4SemanticLabel,
      ),
      SleepDestination(
        id: 5,
        destination: GalleryLocalizations.of(context).craneSleep5,
        total: 876,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep5SemanticLabel,
      ),
      SleepDestination(
        id: 6,
        destination: GalleryLocalizations.of(context).craneSleep6,
        total: 989,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep6SemanticLabel,
      ),
      SleepDestination(
        id: 7,
        destination: GalleryLocalizations.of(context).craneSleep7,
        total: 306,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep7SemanticLabel,
      ),
      SleepDestination(
        id: 8,
        destination: GalleryLocalizations.of(context).craneSleep8,
        total: 385,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep8SemanticLabel,
      ),
      SleepDestination(
        id: 9,
        destination: GalleryLocalizations.of(context).craneSleep9,
        total: 989,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep9SemanticLabel,
      ),
      SleepDestination(
        id: 10,
        destination: GalleryLocalizations.of(context).craneSleep10,
        total: 1380,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep10SemanticLabel,
      ),
      SleepDestination(
        id: 11,
        destination: GalleryLocalizations.of(context).craneSleep11,
        total: 1109,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneSleep11SemanticLabel,
      ),
    ];

List<EatDestination> getEatDestinations(BuildContext context) =>
    <EatDestination>[
      EatDestination(
        id: 0,
        destination: GalleryLocalizations.of(context).craneEat0,
        total: 354,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat0SemanticLabel,
      ),
      EatDestination(
        id: 1,
        destination: GalleryLocalizations.of(context).craneEat1,
        total: 623,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat1SemanticLabel,
      ),
      EatDestination(
        id: 2,
        destination: GalleryLocalizations.of(context).craneEat2,
        total: 124,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat2SemanticLabel,
      ),
      EatDestination(
        id: 3,
        destination: GalleryLocalizations.of(context).craneEat3,
        total: 495,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat3SemanticLabel,
      ),
      EatDestination(
        id: 4,
        destination: GalleryLocalizations.of(context).craneEat4,
        total: 683,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat4SemanticLabel,
      ),
      EatDestination(
        id: 5,
        destination: GalleryLocalizations.of(context).craneEat5,
        total: 786,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat5SemanticLabel,
      ),
      EatDestination(
        id: 6,
        destination: GalleryLocalizations.of(context).craneEat6,
        total: 323,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat6SemanticLabel,
      ),
      EatDestination(
        id: 7,
        destination: GalleryLocalizations.of(context).craneEat7,
        total: 285,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat7SemanticLabel,
      ),
      EatDestination(
        id: 8,
        destination: GalleryLocalizations.of(context).craneEat8,
        total: 323,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat8SemanticLabel,
      ),
      EatDestination(
        id: 9,
        destination: GalleryLocalizations.of(context).craneEat9,
        total: 1406,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat9SemanticLabel,
      ),
      EatDestination(
        id: 10,
        destination: GalleryLocalizations.of(context).craneEat10,
        total: 849,
        assetSemanticLabel:
            GalleryLocalizations.of(context).craneEat10SemanticLabel,
      ),
    ];
