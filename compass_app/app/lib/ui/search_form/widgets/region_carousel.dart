import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/region.dart';
import '../view_models/region_carousel_viewmodel.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({
    super.key,
    required this.viewModel,
  });

  final RegionCarouselViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: viewModel.regions.length,
            itemBuilder: (BuildContext context, int index) {
              final Region(:imageUrl, :name) = viewModel.regions[index];
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      ),
    );
  }
}
