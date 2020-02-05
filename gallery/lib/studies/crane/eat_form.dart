// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/crane/backlayer.dart';
import 'package:gallery/studies/crane/header_form.dart';

class EatForm extends BackLayerItem {
  EatForm({int index}) : super(index: index);

  @override
  _EatFormState createState() => _EatFormState();
}

class _EatFormState extends State<EatForm> {
  final dinerController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(
      fields: <HeaderFormField>[
        HeaderFormField(
          iconData: Icons.person,
          title: GalleryLocalizations.of(context).craneFormDiners,
          textController: dinerController,
        ),
        HeaderFormField(
          iconData: Icons.date_range,
          title: GalleryLocalizations.of(context).craneFormDate,
          textController: dateController,
        ),
        HeaderFormField(
          iconData: Icons.access_time,
          title: GalleryLocalizations.of(context).craneFormTime,
          textController: timeController,
        ),
        HeaderFormField(
          iconData: Icons.restaurant_menu,
          title: GalleryLocalizations.of(context).craneFormLocation,
          textController: locationController,
        ),
      ],
    );
  }
}
