// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/error_indicator.dart';
import '../view_models/activities_viewmodel.dart';
import 'activities_header.dart';
import 'activities_list.dart';
import 'activities_title.dart';
import 'activity_time_of_day.dart';

const String confirmButtonKey = 'confirm-button';

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
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, r) {
        if (!didPop) context.go(Routes.results);
      },
      child: Scaffold(
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
                        title: AppLocalization.of(context)
                            .errorWhileLoadingActivities,
                        label: AppLocalization.of(context).tryAgain,
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
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.saveActivities.completed) {
      widget.viewModel.saveActivities.clearResult();
      context.go(Routes.booking);
    }

    if (widget.viewModel.saveActivities.error) {
      widget.viewModel.saveActivities.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalization.of(context).errorWhileSavingActivities),
          action: SnackBarAction(
            label: AppLocalization.of(context).tryAgain,
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
        child: Padding(
          padding: EdgeInsets.only(
            left: Dimens.of(context).paddingScreenHorizontal,
            right: Dimens.of(context).paddingScreenVertical,
            top: Dimens.paddingVertical,
            bottom: Dimens.of(context).paddingScreenVertical,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalization.of(context)
                    .selected(viewModel.selectedActivities.length),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              FilledButton(
                key: const Key(confirmButtonKey),
                onPressed: viewModel.selectedActivities.isNotEmpty
                    ? viewModel.saveActivities.execute
                    : null,
                child: Text(AppLocalization.of(context).confirm),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
