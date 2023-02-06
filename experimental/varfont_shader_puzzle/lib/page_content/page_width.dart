// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

import '../components/components.dart';
import '../page_content/pages_flow.dart';
import '../styles.dart';

class PageWidth extends SinglePage {
  const PageWidth({
    super.key,
    required super.pageConfig,
  });
  @override
  State<SinglePage> createState() => _PageWidthState();
}

class _PageWidthState extends SinglePageState {
  @override
  Widget createTopicIntro() {
    return LightboxedPanel(
      pageConfig: widget.pageConfig,
      content: [
        Text(
          'Width'.toUpperCase(),
          style: TextStyles.headlineStyle(),
          textAlign: TextAlign.left,
        ),
        Text(
          'Fonts can vary by width as well. Choosing a new width setting is better '
          'than stretching letters in an image editor, which would just distort the letter. '
          'Solve this letter puzzle to clear the glitch and set the width!',
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
        left: widget.pageConfig.wonkyCharLargeSize * -0.17,
        top: widget.pageConfig.wonkyCharLargeSize * -0.2,
        child: WonkyChar(
          text: 'r',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -0.15 * pi,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.width(
              from: 120,
              to: 125,
            )
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.3,
        top: widget.pageConfig.wonkyCharLargeSize * 0.42,
        child: WonkyChar(
          text: 'x',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.12 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
              curve: Curves.easeInOut,
            ),
            WonkyAnimPalette.width(
              from: 70,
              to: 50,
            ),
            WonkyAnimPalette.offsetY(
              from: -6,
              to: 2,
              curve: Curves.easeInOut,
            ),
            WonkyAnimPalette.rotation(
              from: -0.04 * pi,
              to: 0.005 * pi,
            ),
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * 0,
        top: widget.pageConfig.wonkyCharLargeSize * -0.2,
        child: WonkyChar(
          text: 'F',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: 0.15 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.width(
              from: 120,
              to: 125,
            ),
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
          ],
        ),
      ),

      // lower half --------------------------------------
      Positioned(
        left: widget.pageConfig.wonkyCharLargeSize * -0.2,
        bottom: widget.pageConfig.wonkyCharLargeSize * -0.3,
        child: WonkyChar(
          text: 'W',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 6000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.width(
              from: 75,
              to: 50,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.4,
        bottom: widget.pageConfig.wonkyCharLargeSize * 0.1,
        child: WonkyChar(
          text: 'h',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.width(
              from: 90,
              to: 115,
            )
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.75,
        bottom: widget.pageConfig.wonkyCharSmallSize * -0.24,
        child: WonkyChar(
          text: 'K',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 5000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.width(
              from: 125,
              to: 90,
              startAt: 0.3,
              endAt: 0.7,
            ),
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * 0.0,
        bottom: widget.pageConfig.wonkyCharLargeSize * 0.1,
        child: WonkyChar(
          text: '?',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -1.67 * pi,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.width(
              from: 110,
              to: 60,
            )
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
      puzzleNum: 2,
      shader: Shader.bwSplit,
      shaderDuration: 2000,
      tileShadedString: 'S',
      tileShadedStringPadding: EdgeInsets.only(
          left: 0.349 * widget.pageConfig.puzzleSize,
          right: 0.349 * widget.pageConfig.puzzleSize),
      tileShadedStringSize: 3.256 * widget.pageConfig.puzzleSize,
      tileScaleModifier: 2.34,
      tileShadedStringAnimDuration: 2000,
      tileShadedStringAnimSettings: [
        WonkyAnimPalette.weight(from: 200, to: 200),
        WonkyAnimPalette.width(from: 50, to: 125),
      ],
    );
  }
}
