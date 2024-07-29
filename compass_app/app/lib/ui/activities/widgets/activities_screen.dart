import 'package:flutter/material.dart';

import '../../core/ui/error_indicator.dart';
import '../view_models/activities_viewmodel.dart';
import 'activities_header.dart';
import 'activities_list.dart';
import 'activities_title.dart';
import 'activity_time_of_day.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({
    super.key,
    required this.viewModel,
  });

  final ActivitiesViewModel viewModel;

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.saveActivities.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant ActivitiesScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.saveActivities.removeListener(_onResult);
    widget.viewModel.saveActivities.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.saveActivities.removeListener(_onResult);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: widget.viewModel.loadActivities,
        builder: (context, child) {
          if (widget.viewModel.loadActivities.completed) {
            return child!;
          }
          return Column(
            children: [
              const ActivitiesHeader(),
              if (widget.viewModel.loadActivities.running)
                const Expanded(
                    child: Center(child: CircularProgressIndicator())),
              if (widget.viewModel.loadActivities.error)
                Expanded(
                  child: Center(
                    child: ErrorIndicator(
                      title: "Error while loading activities",
                      label: "Try again",
                      onPressed: widget.viewModel.loadActivities.execute,
                    ),
                  ),
                ),
            ],
          );
        },
        child: ListenableBuilder(
          listenable: widget.viewModel,
          builder: (context, child) {
            return Column(
              children: [
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: ActivitiesHeader(),
                      ),
                      ActivitiesTitle(
                        viewModel: widget.viewModel,
                        activityTimeOfDay: ActivityTimeOfDay.daytime,
                      ),
                      ActivitiesList(
                        viewModel: widget.viewModel,
                        activityTimeOfDay: ActivityTimeOfDay.daytime,
                      ),
                      ActivitiesTitle(
                        viewModel: widget.viewModel,
                        activityTimeOfDay: ActivityTimeOfDay.evening,
                      ),
                      ActivitiesList(
                        viewModel: widget.viewModel,
                        activityTimeOfDay: ActivityTimeOfDay.evening,
                      ),
                    ],
                  ),
                ),
                _BottomArea(viewModel: widget.viewModel),
              ],
            );
          },
        ),
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.saveActivities.completed) {
      widget.viewModel.saveActivities.clearResult();
      // TODO
    }

    if (widget.viewModel.saveActivities.error) {
      widget.viewModel.saveActivities.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Error while saving activities'),
          action: SnackBarAction(
            label: "Try again",
            onPressed: widget.viewModel.saveActivities.execute,
          ),
        ),
      );
    }
  }
}

class _BottomArea extends StatelessWidget {
  const _BottomArea({
    required this.viewModel,
  });

  final ActivitiesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Material(
        elevation: 8,
        child: SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${viewModel.selectedActivities.length} selected',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                FilledButton(
                  onPressed: viewModel.selectedActivities.isNotEmpty
                      ? viewModel.saveActivities.execute
                      : null,
                  child: const Text('Confirm'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
