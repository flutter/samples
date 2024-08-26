import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/models/continent.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../view_models/search_form_viewmodel.dart';

class SearchFormContinentCarousel extends StatelessWidget {
  const SearchFormContinentCarousel({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: viewModel.searchFormState.continents.length,
          padding: Dimens.of(context).edgeInsetsScreenHorizontal,
          itemBuilder: (BuildContext context, int index) {
            final continent = viewModel.searchFormState.continents[index];
            return _CarouselItem(
              key: ValueKey(continent.name),
              continent: continent,
              isSelectedContinent:
                  viewModel.searchFormState.selectedContinent == continent,
              updateSelectedContinentCommand: () =>
                  viewModel.updateSelectedContinent(continent),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 8);
          },
        );
      },
    );
  }
}

class _CarouselItem extends StatelessWidget {
  const _CarouselItem({
    super.key,
    required this.continent,
    required this.isSelectedContinent,
    required this.updateSelectedContinentCommand,
  });

  final Continent continent;
  final bool isSelectedContinent;
  final VoidCallback updateSelectedContinentCommand;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: continent.imageUrl,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                // NOTE: Getting "invalid image data" error for some of the images
                // e.g. https://rstr.in/google/tripedia/jlbgFDrSUVE
                return const DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.grey3,
                  ),
                  child: SizedBox(width: 140, height: 140),
                );
              },
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  continent.name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white1,
                  ),
                ),
              ),
            ),
            // Overlay when other continent is selected
            Positioned.fill(
              child: AnimatedOpacity(
                opacity: isSelectedContinent ? 0 : 0.7,
                duration: kThemeChangeDuration,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // Support dark-mode
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            // Handle taps
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => updateSelectedContinentCommand(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
