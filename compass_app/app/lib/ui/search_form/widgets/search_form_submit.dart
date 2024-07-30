import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/themes/dimens.dart';
import '../../results/widgets/results_screen.dart';
import '../view_models/search_form_viewmodel.dart';

/// Search form submit button
///
/// The button is disabled when the form is data is incomplete.
/// When tapped, it navigates to the [ResultsScreen]
/// passing the search options as query parameters.
class SearchFormSubmit extends StatefulWidget {
  const SearchFormSubmit({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  State<SearchFormSubmit> createState() => _SearchFormSubmitState();
}

class _SearchFormSubmitState extends State<SearchFormSubmit> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.updateItineraryConfig.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant SearchFormSubmit oldWidget) {
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
    return Padding(
      padding: EdgeInsets.only(
        top: Dimens.paddingVertical,
        left: Dimens.of(context).paddingScreenHorizontal,
        right: Dimens.of(context).paddingScreenHorizontal,
        bottom: Dimens.of(context).paddingScreenVertical,
      ),
      child: ListenableBuilder(
        listenable: widget.viewModel,
        child: const SizedBox(
          height: 52,
          child: Center(
            child: Text('Search'),
          ),
        ),
        builder: (context, child) {
          return FilledButton(
            key: const ValueKey('submit_button'),
            onPressed: widget.viewModel.valid
                ? widget.viewModel.updateItineraryConfig.execute
                : null,
            child: child,
          );
        },
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.updateItineraryConfig.completed) {
      widget.viewModel.updateItineraryConfig.clearResult();
      context.go('/results');
    }

    if (widget.viewModel.updateItineraryConfig.error) {
      widget.viewModel.updateItineraryConfig.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Error while saving itinerary'),
        action: SnackBarAction(
          label: "Try again",
          onPressed: widget.viewModel.updateItineraryConfig.execute,
        ),
      ));
    }
  }
}
