import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/models/region.dart';
import '../../core/themes/colors.dart';
import '../view_models/search_form_viewmodel.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, child) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: viewModel.regions.length,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (BuildContext context, int index) {
                final Region(:imageUrl, :name) = viewModel.regions[index];
                return _CarouselItem(
                  key: ValueKey(name),
                  imageUrl: imageUrl,
                  name: name,
                  viewModel: viewModel,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 8);
              },
            );
          }),
    );
  }
}

class _CarouselItem extends StatelessWidget {
  const _CarouselItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.viewModel,
  });

  final String imageUrl;
  final String name;
  final SearchFormViewModel viewModel;

  bool _selected() =>
      viewModel.selectedRegion == null || viewModel.selectedRegion == name;

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
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              // color: _selected() ? Colors.transparent : Colors.white.withOpacity(0.7),
              // colorBlendMode: BlendMode.srcATop,
              errorWidget: (context, url, error) {
                // NOTE: Getting "invalid image data" error for some of the images
                // e.g. https://rstr.in/google/tripedia/jlbgFDrSUVE
                // print(error);
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
                  name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white1,
                  ),
                ),
              ),
            ),
            // Overlay when other region is selected
            Positioned.fill(
              child: AnimatedOpacity(
                opacity: _selected() ? 0 : 0.7,
                duration: kThemeChangeDuration,
                child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            // Handle taps
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    viewModel.selectedRegion = name;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
