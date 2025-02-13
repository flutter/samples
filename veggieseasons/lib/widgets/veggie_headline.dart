// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../data/veggie.dart';
import '../styles.dart';

class ZoomClipAssetImage extends StatelessWidget {
  const ZoomClipAssetImage({
    required this.zoom,
    this.height,
    this.width,
    required this.imageAsset,
    super.key,
  });

  final double zoom;
  final double? height;
  final double? width;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: OverflowBox(
          maxHeight: height! * zoom,
          maxWidth: width! * zoom,
          child: Image.asset(imageAsset, fit: BoxFit.fill),
        ),
      ),
    );
  }
}

class VeggieHeadline extends StatelessWidget {
  final Veggie veggie;

  const VeggieHeadline(this.veggie, {super.key});

  List<Widget> _buildSeasonDots(List<Season> seasons) {
    var widgets = <Widget>[];

    for (var season in seasons) {
      widgets.add(const SizedBox(width: 4));
      widgets.add(
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Styles.seasonColors[season],
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);

    return GestureDetector(
      onTap: () {
        // GoRouter does not support relative routes,
        // so navigate to the absolute route, which can be either
        // `/favorites/details/${veggie.id}` or `/search/details/${veggie.id}`
        // see https://github.com/flutter/flutter/issues/108177
        context.go('${GoRouter.of(context).location}/details/${veggie.id}');
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ZoomClipAssetImage(
            imageAsset: veggie.imageAssetPath,
            zoom: 2.4,
            height: 72,
            width: 72,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(veggie.name, style: Styles.headlineName(themeData)),
                    ..._buildSeasonDots(veggie.seasons),
                  ],
                ),
                Text(
                  veggie.shortDescription,
                  style: themeData.textTheme.textStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
