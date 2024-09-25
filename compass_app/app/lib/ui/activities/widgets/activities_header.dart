// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/back_button.dart';
import '../../core/ui/home_button.dart';

class ActivitiesHeader extends StatelessWidget {
  const ActivitiesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.only(
          left: Dimens.of(context).paddingScreenHorizontal,
          right: Dimens.of(context).paddingScreenHorizontal,
          top: Dimens.of(context).paddingScreenVertical,
          bottom: Dimens.paddingVertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBackButton(
              onTap: () {
                // Navigate to ResultsScreen and edit search
                context.go(Routes.results);
              },
            ),
            Text(
              AppLocalization.of(context).activities,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const HomeButton(),
          ],
        ),
      ),
    );
  }
}
