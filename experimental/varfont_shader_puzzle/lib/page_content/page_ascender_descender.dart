// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

import '../components/components.dart';
import '../page_content/pages_flow.dart';
import '../styles.dart';

class PageAscenderDescender extends SinglePage {
  const PageAscenderDescender({
    super.key,
    required super.pageConfig,
  });
  @override
  State<SinglePage> createState() => _PageAscenderDescenderState();
}

class _PageAscenderDescenderState extends SinglePageState {
  @override
  Widget createTopicIntro() {
    return LightboxedPanel(
      pageConfig: widget.pageConfig,
      content: [
        Text(
          'Ascenders & Descenders'.toUpperCase(),
          style: TextStyles.headlineStyle(),
          textAlign: TextAlign.left,
        ),
        Text(
          'Fonts can also vary based on their '
          'individual pieces, like the ascenders (the parts that '
          'extend upward) and the descenders (which extend downward)! '
          'Piece this letter together and lock in its '
          'wobbly ascenders and descenders!',
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
        left: widget.pageConfig.wonkyCharLargeSize * 0.08,
        top: widget.pageConfig.wonkyCharLargeSize * -0.1,
        child: WonkyChar(
          text: 'l',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: 0.15 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.ascenderHt(
              from: 500,
              to: 983,
              curve: Curves.easeInOut,
            ),
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
              curve: Curves.easeInOut,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.34,
        top: widget.pageConfig.wonkyCharLargeSize * 0.12,
        child: WonkyChar(
          text: 'g',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.12 * pi,
          animDurationMillis: 3200,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
              curve: Curves.easeInOut,
            ),
            WonkyAnimPalette.descenderDepth(
              from: -500,
              to: -138,
            )
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * -0.1,
        top: widget.pageConfig.wonkyCharLargeSize * -0.5,
        child: WonkyChar(
          text: 'q',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: 0.15 * pi,
          animDurationMillis: 5000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.descenderDepth(
              from: -240,
              to: -440,
              startAt: 0.3,
              endAt: 0.7,
              curve: Curves.bounceOut,
            ),
          ],
        ),
      ),
      // lower half --------------------------------------
      Positioned(
        left: widget.pageConfig.wonkyCharSmallSize * 0.1,
        bottom: widget.pageConfig.wonkyCharSmallSize * -0.34,
        child: WonkyChar(
          text: 'f',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 12000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.ascenderHt(
              from: 600,
              to: 980,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.17,
        bottom: widget.pageConfig.wonkyCharLargeSize * 0.5,
        child: WonkyChar(
          text: 'p',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 3000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.descenderDepth(
              from: -390,
              to: -220,
              curve: Curves.linear,
            ),
          ],
        ),
      ),
      Positioned(
        left: widget.pageConfig.screenWidth * 0.4,
        bottom: widget.pageConfig.wonkyCharSmallSize * 0.25,
        child: WonkyChar(
          text: 'k',
          size: widget.pageConfig.wonkyCharSmallSize,
          baseRotation: -0.15 * pi,
          animDurationMillis: 3000,
          animationSettings: [
            WonkyAnimPalette.ascenderHt(
              from: 600,
              to: 840,
              curve: Curves.linear,
            ),
          ],
        ),
      ),
      Positioned(
        right: widget.pageConfig.wonkyCharLargeSize * 0.05,
        bottom: widget.pageConfig.wonkyCharLargeSize * -0.04,
        child: WonkyChar(
          text: 'j',
          size: widget.pageConfig.wonkyCharLargeSize,
          baseRotation: 0.2 * pi,
          animDurationMillis: 5000,
          animationSettings: [
            WonkyAnimPalette.weight(
              from: PageConfig.baseWeight,
              to: PageConfig.baseWeight,
            ),
            WonkyAnimPalette.descenderDepth(
              from: -200,
              to: -500,
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
      numTiles: 9,
      puzzleNum: 3,
      shader: Shader.rowOffset,
      shaderDuration: 2000,
      tileShadedString: 'fyd',
      tileShadedStringPadding: EdgeInsets.only(
          top: 0.233 * widget.pageConfig.puzzleSize,
          bottom: 0,
          left: 0.465 * widget.pageConfig.puzzleSize,
          right: 0.465 * widget.pageConfig.puzzleSize),
      tileShadedStringSize: 1.86 * widget.pageConfig.puzzleSize,
      tileScaleModifier: 2.7,
      tileShadedStringAnimDuration: 2000,
      tileShadedStringAnimSettings: [
        WonkyAnimPalette.weight(from: 200, to: 200),
        WonkyAnimPalette.width(from: 50, to: 50),
        WonkyAnimPalette.ascenderHt(from: 700, to: 980),
        WonkyAnimPalette.descenderDepth(from: -238, to: -138),
      ],
    );
  }
}
