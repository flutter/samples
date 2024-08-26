import 'package:flutter/material.dart';

import '../../core/localization/applocalization.dart';
import '../../core/ui/error_indicator.dart';
import '../view_models/search_form_viewmodel.dart';
import 'search_form_continent_carousel.dart';

/// Continent selection carousel
///
/// Loads a list of continents in a horizontal carousel.
/// Users can tap one item to select it.
/// Tapping again the same item will deselect it.
class SearchFormContinent extends StatelessWidget {
  const SearchFormContinent({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListenableBuilder(
        listenable: viewModel.load,
        builder: (context, child) {
          if (viewModel.load.running) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (viewModel.load.error) {
            return Center(
              child: ErrorIndicator(
                title: AppLocalization.of(context).errorWhileLoadingContinents,
                label: AppLocalization.of(context).tryAgain,
                onPressed: viewModel.load.execute,
              ),
            );
          }
          return child!;
        },
        child: SearchFormContinentCarousel(viewModel: viewModel),
      ),
    );
  }
}
