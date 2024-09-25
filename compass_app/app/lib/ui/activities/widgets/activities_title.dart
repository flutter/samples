// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../view_models/activities_viewmodel.dart';
import 'activity_time_of_day.dart';

class ActivitiesTitle extends StatelessWidget {
  const ActivitiesTitle({
    super.key,
    required this.activityTimeOfDay,
    required this.viewModel,
  });

  final ActivitiesViewModel viewModel;
  final ActivityTimeOfDay activityTimeOfDay;

  @override
  Widget build(BuildContext context) {
    final list = switch (activityTimeOfDay) {
      ActivityTimeOfDay.daytime => viewModel.daytimeActivities,
      ActivityTimeOfDay.evening => viewModel.eveningActivities,
    };
    if (list.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox());
    }
    return SliverToBoxAdapter(
      child: Padding(
        padding: Dimens.of(context).edgeInsetsScreenHorizontal,
        child: Text(_label(context)),
      ),
    );
  }

  String _label(BuildContext context) => switch (activityTimeOfDay) {
        ActivityTimeOfDay.daytime => AppLocalization.of(context).daytime,
        ActivityTimeOfDay.evening => AppLocalization.of(context).evening,
      };
}
