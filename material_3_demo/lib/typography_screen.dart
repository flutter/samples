// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    return Expanded(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 8),
          TextStyleExample(
              name: 'Display Large', style: textTheme.displayLarge!),
          TextStyleExample(
              name: 'Display Medium', style: textTheme.displayMedium!),
          TextStyleExample(
              name: 'Display Small', style: textTheme.displaySmall!),
          TextStyleExample(
              name: 'Headline Large', style: textTheme.headlineLarge!),
          TextStyleExample(
              name: 'Headline Medium', style: textTheme.headlineMedium!),
          TextStyleExample(
              name: 'Headline Small', style: textTheme.headlineSmall!),
          TextStyleExample(name: 'Title Large', style: textTheme.titleLarge!),
          TextStyleExample(name: 'Title Medium', style: textTheme.titleMedium!),
          TextStyleExample(name: 'Title Small', style: textTheme.titleSmall!),
          TextStyleExample(name: 'Label Large', style: textTheme.labelLarge!),
          TextStyleExample(name: 'Label Medium', style: textTheme.labelMedium!),
          TextStyleExample(name: 'Label Small', style: textTheme.labelSmall!),
          TextStyleExample(name: 'Body Large', style: textTheme.bodyLarge!),
          TextStyleExample(name: 'Body Medium', style: textTheme.bodyMedium!),
          TextStyleExample(name: 'Body Small', style: textTheme.bodySmall!),
        ],
      ),
    );
  }
}

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name, style: style),
    );
  }
}
