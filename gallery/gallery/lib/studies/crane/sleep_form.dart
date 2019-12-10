// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

import 'package:gallery/studies/crane/header_form.dart';

class SleepForm extends StatefulWidget {
  @override
  _SleepFormState createState() => _SleepFormState();
}

class _SleepFormState extends State<SleepForm> {
  final travelerController = TextEditingController();
  final dateController = TextEditingController();
  final locationController = TextEditingController();

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
          iconData: Icons.date_range,
          title: GalleryLocalizations.of(context).craneFormDates,
          textController: dateController,
        ),
        HeaderFormField(
          iconData: Icons.hotel,
          title: GalleryLocalizations.of(context).craneFormLocation,
          textController: locationController,
        ),
      ],
    );
  }
}
