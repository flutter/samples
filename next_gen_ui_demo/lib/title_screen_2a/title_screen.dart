// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';
import '../styles.dart';
import '../title_screen/title_screen.dart';

class TitleScreen extends TitleScreenBase {
  const TitleScreen({super.key, required super.callback});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
        (duration) => widget.callback(AppColors.orbColors[0]));

    return Center(
      child: Stack(
        children: [
          /// Bg-Base
          Image.asset(AssetPaths.titleBgBase),

          /// Bg-Receive
          Image.asset(AssetPaths.titleBgReceive),

          /// Mg-Base
          Image.asset(AssetPaths.titleMgBase),

          /// Mg-Receive
          Image.asset(AssetPaths.titleMgReceive),

          /// Mg-Emit
          Image.asset(AssetPaths.titleMgEmit),

          /// Fg-Rocks
          Image.asset(AssetPaths.titleFgBase),

          /// Fg-Receive
          Image.asset(AssetPaths.titleFgReceive),

          /// Fg-Emit
          Image.asset(AssetPaths.titleFgEmit),
        ],
      ),
    );
  }
}
