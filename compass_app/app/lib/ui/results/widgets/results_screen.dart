// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/error_indicator.dart';
import '../../core/ui/search_bar.dart';
import '../view_models/results_viewmodel.dart';
import 'result_card.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({
    super.key,
    required this.viewModel,
  });

  final ResultsViewModel viewModel;

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.updateItineraryConfig.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant ResultsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.updateItineraryConfig.removeListener(_onResult);
    widget.viewModel.updateItineraryConfig.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.updateItineraryConfig.removeListener(_onResult);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, r) {
        if (!didPop) context.go(Routes.search);
      },
      child: Scaffold(
        body: ListenableBuilder(
          listenable: widget.viewModel.search,
          builder: (context, child) {
            if (widget.viewModel.search.completed) {
              return child!;
            }
            return Column(
              children: [
                _AppSearchBar(widget: widget),
                if (widget.viewModel.search.running)
                  const Expanded(
                      child: Center(child: CircularProgressIndicator())),
                if (widget.viewModel.search.error)
                  Expanded(
                    child: Center(
                      child: ErrorIndicator(
                        title: AppLocalization.of(context)
                            .errorWhileLoadingDestinations,
                        label: AppLocalization.of(context).tryAgain,
                        onPressed: widget.viewModel.search.execute,
                      ),
                    ),
                  ),
              ],
            );
          },
          child: ListenableBuilder(
            listenable: widget.viewModel,
            builder: (context, child) {
              return Padding(
                padding: Dimens.of(context).edgeInsetsScreenHorizontal,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: _AppSearchBar(widget: widget),
                    ),
                    _Grid(viewModel: widget.viewModel),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.updateItineraryConfig.completed) {
      widget.viewModel.updateItineraryConfig.clearResult();
      context.go(Routes.activities);
    }

    if (widget.viewModel.updateItineraryConfig.error) {
      widget.viewModel.updateItineraryConfig.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalization.of(context).errorWhileSavingItinerary),
        ),
      );
    }
  }
}

class _AppSearchBar extends StatelessWidget {
  const _AppSearchBar({
    required this.widget,
  });

  final ResultsScreen widget;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.only(
          top: Dimens.of(context).paddingScreenVertical,
          bottom: Dimens.mobile.paddingScreenVertical,
        ),
        child: AppSearchBar(
          config: widget.viewModel.config,
          onTap: () {
            // Navigate to SearchFormScreen and edit search
            context.pop();
          },
        ),
      ),
    );
  }
}

class _Grid extends StatelessWidget {
  const _Grid({
    required this.viewModel,
  });

  final ResultsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 182 / 222,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final destination = viewModel.destinations[index];
          return ResultCard(
            key: ValueKey(destination.ref),
            destination: destination,
            onTap: () {
              viewModel.updateItineraryConfig.execute(destination.ref);
            },
          );
        },
        childCount: viewModel.destinations.length,
      ),
    );
  }
}
