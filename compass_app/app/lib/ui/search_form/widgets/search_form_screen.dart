import 'package:flutter/material.dart';

import '../../core/ui/search_bar.dart';
import '../../results/widgets/results_screen.dart';
import '../view_models/search_form_viewmodel.dart';
import 'search_form_date.dart';
import 'search_form_guests.dart';
import 'search_form_region.dart';
import 'search_form_submit.dart';

/// Search form screen
///
/// Displays a search form with region, date and guests selection.
/// Tapping on the submit button opens the [ResultsScreen] screen
/// passing the search options as query parameters.
class SearchFormScreen extends StatelessWidget {
  const SearchFormScreen({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 24,
            ),
            child: AppSearchBar(),
          ),
          SearchFormRegion(viewModel: viewModel),
          SearchFormDate(viewModel: viewModel),
          SearchFormGuests(viewModel: viewModel),
          const Spacer(),
          SearchFormSubmit(viewModel: viewModel),
        ],
      ),
    );
  }
}
