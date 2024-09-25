// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../domain/models/destination/destination.dart';
import '../../../utils/image_error_listener.dart';
import '../../core/ui/tag_chip.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.destination,
    required this.onTap,
  });

  final Destination destination;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: destination.imageUrl,
            fit: BoxFit.fitHeight,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            errorListener: imageErrorListener,
          ),
          Positioned(
            bottom: 12.0,
            left: 12.0,
            right: 12.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.name.toUpperCase(),
                  style: _cardTitleStyle,
                ),
                const SizedBox(
                  height: 6,
                ),
                Wrap(
                  spacing: 4.0,
                  runSpacing: 4.0,
                  direction: Axis.horizontal,
                  children:
                      destination.tags.map((e) => TagChip(tag: e)).toList(),
                ),
              ],
            ),
          ),
          // Handle taps
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final _cardTitleStyle = GoogleFonts.rubik(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 15.0,
    color: Colors.white,
    letterSpacing: 1,
    shadows: [
      // Helps to read the text a bit better
      Shadow(
        blurRadius: 3.0,
        color: Colors.black,
      )
    ],
  ),
);
