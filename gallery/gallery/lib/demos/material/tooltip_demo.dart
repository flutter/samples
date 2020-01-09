// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN tooltipDemo

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(GalleryLocalizations.of(context).demoTooltipTitle),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                GalleryLocalizations.of(context).demoTooltipInstructions,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Tooltip(
                message:
                    GalleryLocalizations.of(context).starterAppTooltipSearch,
                child: IconButton(
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// END
