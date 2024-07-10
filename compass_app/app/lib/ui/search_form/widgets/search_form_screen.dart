import 'package:flutter/material.dart';

import '../../core/ui/search_bar.dart';
import '../view_models/search_form_viewmodel.dart';
import 'region_carousel.dart';
import 'search_date_display.dart';

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
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 24,
            ),
            child: DestinationSearchBar(),
          ),
          DestinationCarousel(viewModel: viewModel),
          SearchDateDisplay(
            viewModel: viewModel,
          ),
        ],
      ),
    );
    //   Center(
    //     child: Column(
    //       children: [
    //         const DestinationSearchBar(),
    //         ElevatedButton(
    //           onPressed: () {
    //             context.go('/results?destination=Europe&checkIn=2024-05-09&checkOut=2024-05-24&guests=1');
    //           },
    //           child: const Text('Search'),
    //         ),
    //       ],
    //     ),
    //   )
    // );
  }
}
