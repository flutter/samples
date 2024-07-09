import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/ui/home_button.dart';
import '../../core/ui/search_bar.dart';
import '../view_models/region_carousel_viewmodel.dart';
import 'region_carousel.dart';

class SearchFormScreen extends StatelessWidget {
  const SearchFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 24, bottom: 24),
                child: DestinationSearchBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: DestinationCarousel(viewModel: RegionCarouselViewModel(),),
            ),
          ],
        ),
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
