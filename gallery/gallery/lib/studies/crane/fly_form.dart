// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/crane/header_form.dart';

class FlyForm extends StatefulWidget {
  @override
  _FlyFormState createState() => _FlyFormState();
}

class _FlyFormState extends State<FlyForm> {
  final travelerController = TextEditingController();
  final countryDestinationController = TextEditingController();
  final destinationController = TextEditingController();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(
      fields: <HeaderFormField>[
        HeaderFormField(
          iconData: Icons.person,
          title: GalleryLocalizations.of(context).craneFormTravelers,
          textController: travelerController,
        ),
        HeaderFormField(
          iconData: Icons.place,
          title: GalleryLocalizations.of(context).craneFormOrigin,
          textController: countryDestinationController,
        ),
        HeaderFormField(
          iconData: Icons.airplanemode_active,
          title: GalleryLocalizations.of(context).craneFormDestination,
          textController: destinationController,
        ),
        HeaderFormField(
          iconData: Icons.date_range,
          title: GalleryLocalizations.of(context).craneFormDates,
          textController: dateController,
        ),
      ],
    );
  }
}
