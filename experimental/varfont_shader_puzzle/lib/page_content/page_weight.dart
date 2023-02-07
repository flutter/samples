// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

import '../components/components.dart';
import '../page_content/pages_flow.dart';
import '../styles.dart';

class PageWeight extends SinglePage {
  const PageWeight({
    super.key,
    required super.pageConfig,
  });

  @override
  State<SinglePage> createState() => _PageWeightState();
}

class _PageWeightState extends SinglePageState {
  @override
  Widget createTopicIntro() {
    return LightboxedPanel(
      pageConfig: widget.pageConfig,
      content: [
        Text(
          'Weight'.toUpperCase(),
          style: TextStyles.headlineStyle(),
          textAlign: TextAlign.left,
        ),
        Text(
          'You probably knew that fonts can vary by weight, or the boldness, '
          'as we can see in the letters on this page. Tap the pieces of the '
          'broken letter to bring it back together, but don’t get distracted '
          'by its oscillating weight!',
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
        left: widget.pageConfig.wonkyCharLargeSize * -0.01,
        top: widget.pageConfig.wonkyCharLargeSize * -0.26,
        child: WonkyChar(
          text: 'S',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: 0.15 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: 100,
              to: 300,
              curve: Curves.easeInOut,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.34,
        top: widget.pageConfig.wonkyCharLargeSize * 0.3,
        child: WonkyChar(
          text: 't',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.12 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: 1000,
              to: 800,
              curve: Curves.easeInOut,
            ),
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * 0.07,
        top: widget.pageConfig.wonkyCharLargeSize * -0.26,
        child: WonkyChar(
          text: 'q',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 5000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: 200,
              to: 500,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.5,
        top: widget.pageConfig.wonkyCharSmallSize * 0.3,
        child: WonkyChar(
          text: '*',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: 100,
              to: 400,
            ),
          ],
        ),
      ),
      // lower half --------------------------------------
      Positioned(
        left: widget.pageConfig.wonkyCharLargeSize * -0.2,
        bottom: widget.pageConfig.wonkyCharLargeSize * -0.34,
        child: WonkyChar(
          text: 'C',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 7000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: 1000,
              to: 700,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.42,
        bottom: widget.pageConfig.wonkyCharLargeSize * 0.02,
        child: WonkyChar(
          text: 'f',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 4000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: 100,
              to: 200,
            ),
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * -0.2,
        bottom: widget.pageConfig.wonkyCharLargeSize * -0.23,
        child: WonkyChar(
          text: 'R',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: -1.15 * pi,
          animDurationMillis: 2000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: 700,
              to: 900,
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
      numTiles: 9,
      puzzleNum: 1,
      shader: Shader.wavy2,
      shaderDuration: 3000,
      tileShadedString: 'W',
      tileShadedStringPadding: EdgeInsets.only(
          left: 0.698 * widget.pageConfig.puzzleSize,
          right: 0.698 * widget.pageConfig.puzzleSize),
      tileShadedStringSize: 2.79 * widget.pageConfig.puzzleSize,
      tileScaleModifier: 2.4,
      tileShadedStringAnimDuration: 1000,
      tileShadedStringAnimSettings: [
        WonkyAnimPalette.weight(from: 600, to: 1000),
        WonkyAnimPalette.width(from: 50, to: 50),
      ],
    );
  }
}
