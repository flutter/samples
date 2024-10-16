// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/models/continent/continent.dart';
import '../../../utils/image_error_listener.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/error_indicator.dart';
import '../view_models/search_form_viewmodel.dart';

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
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, child) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: viewModel.continents.length,
              padding: Dimens.of(context).edgeInsetsScreenHorizontal,
              itemBuilder: (BuildContext context, int index) {
                final Continent(:imageUrl, :name) = viewModel.continents[index];
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
          },
        ),
      ),
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
      viewModel.selectedContinent == null ||
      viewModel.selectedContinent == name;

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
              errorListener: imageErrorListener,
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
            // Overlay when other continent is selected
            Positioned.fill(
              child: AnimatedOpacity(
                opacity: _selected() ? 0 : 0.7,
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
                  onTap: () {
                    if (viewModel.selectedContinent == name) {
                      viewModel.selectedContinent = null;
                    } else {
                      viewModel.selectedContinent = name;
                    }
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
