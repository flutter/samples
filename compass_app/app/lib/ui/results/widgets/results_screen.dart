import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Scaffold(
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
                const Expanded(child: Center(child: CircularProgressIndicator())),
              if (widget.viewModel.search.error)
                Expanded(
                  child: Center(
                    child: ErrorIndicator(
                      title: "Error while loading destinations",
                      label: "Try again",
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
    );
  }

  void _onResult() {
    if (widget.viewModel.updateItineraryConfig.completed) {
      widget.viewModel.updateItineraryConfig.clearResult();
      context.go('/activities');
    }

    if (widget.viewModel.updateItineraryConfig.error) {
      widget.viewModel.updateItineraryConfig.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error while saving itinerary'),
        ),
      );
    }
  }
}

class _AppSearchBar extends StatelessWidget {
  const _AppSearchBar({
    super.key,
    required this.widget,
  });

  final ResultsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      child: AppSearchBar(
        config: widget.viewModel.config,
        onTap: () {
          // Navigate to SearchFormScreen and edit search
          context.go('/');
        },
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
