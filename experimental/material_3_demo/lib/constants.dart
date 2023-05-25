// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// NavigationRail shows if the screen width is greater or equal to
// narrowScreenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

const double mediumWidthBreakpoint = 1000;
const double largeWidthBreakpoint = 1500;

const double transitionLength = 500;

// Whether the user has chosen a theme color via a direct [ColorSeed] selection,
// or an image [ColorImageProvider].
enum ColorSelectionMethod {
  colorSeed,
  image,
}

enum ColorSeed {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink);

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}

enum ColorImageProvider {
  leaves('Leaves',
      'https://github.com/flutter/assets-for-api-docs/blob/main/assets/material/content_based_color_scheme_1.png?raw=true'),
  peonies('Peonies',
      'https://github.com/flutter/assets-for-api-docs/blob/main/assets/material/content_based_color_scheme_2.png?raw=true'),
  bubbles('Bubbles',
      'https://github.com/flutter/assets-for-api-docs/blob/main/assets/material/content_based_color_scheme_3.png?raw=true'),
  seaweed('Seaweed',
      'https://github.com/flutter/assets-for-api-docs/blob/main/assets/material/content_based_color_scheme_4.png?raw=true'),
  seagrapes('Sea Grapes',
      'https://github.com/flutter/assets-for-api-docs/blob/main/assets/material/content_based_color_scheme_5.png?raw=true'),
  petals('Petals',
      'https://github.com/flutter/assets-for-api-docs/blob/main/assets/material/content_based_color_scheme_6.png?raw=true');

  const ColorImageProvider(this.label, this.url);
  final String label;
  final String url;
}

enum ScreenSelected {
  component(0),
  color(1),
  typography(2),
  elevation(3);

  const ScreenSelected(this.value);
  final int value;
}
