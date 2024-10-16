// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../themes/colors.dart';
import 'blur_filter.dart';

/// Home button to navigate back to the '/' path.
class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    this.blur = false,
  });

  final bool blur;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: 40.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (blur)
            ClipRect(
              child: BackdropFilter(
                filter: kBlurFilter,
                child: const SizedBox(height: 40.0, width: 40.0),
              ),
            ),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey1),
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.transparent,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(8.0),
              onTap: () {
                context.go(Routes.home);
              },
              child: Center(
                child: Icon(
                  size: 24.0,
                  Icons.home_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
