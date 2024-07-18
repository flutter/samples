import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(_label()),
      ),
    );
  }

  String _label() => switch (activityTimeOfDay) {
        ActivityTimeOfDay.daytime => 'Daytime',
        ActivityTimeOfDay.evening => 'Evening',
      };
}
