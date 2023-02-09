// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

import '../components/components.dart';
import '../page_content/pages_flow.dart';
import '../styles.dart';

class PageOpticalSize extends SinglePage {
  const PageOpticalSize({
    super.key,
    required super.pageConfig,
  });

  @override
  State<SinglePage> createState() => _PageOpticalSizeState();
}

class _PageOpticalSizeState extends SinglePageState {
  @override
  Widget createTopicIntro() {
    return LightboxedPanel(
      pageConfig: widget.pageConfig,
      content: [
        Text(
          'Optical Size'.toUpperCase(),
          style: TextStyles.headlineStyle(),
          textAlign: TextAlign.left,
        ),
        Text(
          'Optical size adjusts the type according to how large it will be shown. '
          'Smaller type usually calls for less contrast between the thin and thick '
          'parts the letter, while larger type calls for more contrast. '
          'Put this glitching letter back together and lock in the optical size!',
          style: TextStyles.bodyStyle(),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

  @override
  List<Widget> buildWonkyChars() {
    return <Widget>[
      Positioned(
        left: widget.pageConfig.wonkyCharLargeSize * -0.13,
        top: widget.pageConfig.wonkyCharLargeSize * -0.3,
        child: WonkyChar(
          text: 'O',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: 0.15 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
              curve: Curves.easeInOut,
            ),
            WonkyAnimPalette.opticalSize(
              from: 70,
              to: 144,
            )
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.37,
        top: widget.pageConfig.wonkyCharLargeSize * 0.37,
        child: WonkyChar(
          text: '@',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.12 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
              curve: Curves.easeInOut,
            ),
            WonkyAnimPalette.opticalSize(
              from: 78,
              to: 8,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.57,
        top: widget.pageConfig.wonkyCharSmallSize * -0.02,
        child: WonkyChar(
          text: 'r',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animationSettings: [
            WonkyAnimPalette.opticalSize(
              from: 32,
              to: 106,
            )
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * 0.03,
        top: widget.pageConfig.wonkyCharLargeSize * -0.26,
        child: WonkyChar(
          text: 'e',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 5000,
          animationSettings: [
            WonkyAnimPalette.opticalSize(
              from: 70,
              to: 144,
            )
          ],
        ),
      ),
      // lower half --------------------------------------
      Positioned(
        left: widget.pageConfig.wonkyCharLargeSize * 0.1,
        bottom: widget.pageConfig.wonkyCharLargeSize * 0.05,
        child: WonkyChar(
          text: 'i',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -0.04 * pi,
          animationSettings: [
            WonkyAnimPalette.opticalSize(
              from: 40,
              to: 8,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.37,
        bottom: widget.pageConfig.wonkyCharLargeSize * -0.04,
        child: WonkyChar(
          text: 'Z',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animationSettings: [
            WonkyAnimPalette.opticalSize(
              from: 8,
              to: 60,
            ),
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * -0.14,
        bottom: widget.pageConfig.wonkyCharLargeSize * -0.1,
        child: WonkyChar(
          text: 'A',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: 0.15 * pi,
          animDurationMillis: 12000,
          animationSettings: [
            WonkyAnimPalette.opticalSize(
              from: 80,
              to: 20,
            ),
            WonkyAnimPalette.rotation(
              from: -0.01 * pi,
              to: 0.01 * pi,
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget createPuzzle() {
    return RotatorPuzzle(
      pageConfig: widget.pageConfig,
      numTiles: 16,
      puzzleNum: 4,
      shader: Shader.wavy,
      shaderDuration: 5000,
      tileShadedString: 'Z',
      tileShadedStringPadding:
          EdgeInsets.only(bottom: 0.349 * widget.pageConfig.puzzleSize),
      tileScaleModifier: 2.6,
      tileShadedStringSize: 2.79 * widget.pageConfig.puzzleSize,
      tileShadedStringAnimDuration: 3000,
      tileShadedStringAnimSettings: [
        WonkyAnimPalette.weight(from: 1000, to: 1000),
        WonkyAnimPalette.width(from: 125, to: 125),
        WonkyAnimPalette.opticalSize(from: 8, to: 144)
      ],
    );
  }
}
