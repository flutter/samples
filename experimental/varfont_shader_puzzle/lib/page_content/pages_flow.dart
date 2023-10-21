// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

import '../components/components.dart';
import '../page_content/wallpapers_flow.dart';
import 'pages.dart';

class PagesFlow extends StatefulWidget {
  const PagesFlow({super.key});

  static const pageScrollDuration = 400;

  @override
  State<PagesFlow> createState() => _PagesFlowState();
}

class _PagesFlowState extends State<PagesFlow> {
  late PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    bool narrowView = screenWidth * 1.8 < screenHeight ? true : false;
    double puzzleSize =
        narrowView ? screenWidth * 1 : min(screenHeight * 0.6, screenWidth);
    double topBottomMargin = (screenHeight - puzzleSize) * 0.5;
    double wonkyCharLargeSize = topBottomMargin * 1.0;
    double wonkyCharSmallSize = wonkyCharLargeSize * 0.5;
    PageConfig pageConfig = PageConfig(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      narrowView: narrowView,
      puzzleSize: puzzleSize,
      pageController: pageController,
      wonkyCharLargeSize: wonkyCharLargeSize,
      wonkyCharSmallSize: wonkyCharSmallSize,
    );

    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        PageNarrativePre(
          pageConfig: pageConfig,
        ),
        PageWeight(
          pageConfig: pageConfig,
        ),
        PageAscenderDescender(
          pageConfig: pageConfig,
        ),
        PageOpticalSize(
          pageConfig: pageConfig,
        ),
        PageWidth(
          pageConfig: pageConfig,
        ),
        PageNarrativePost(
          pageConfig: pageConfig,
        ),
        const WallpapersFlow(),
      ],
    );
  }
}

class PageConfig {
  final double screenWidth;
  final double screenHeight;
  final bool narrowView;
  final double puzzleSize;
  final PageController pageController;
  final double wonkyCharLargeSize;
  final double wonkyCharSmallSize;
  static double baseWeight = 800;
  const PageConfig({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.narrowView,
    required this.puzzleSize,
    required this.pageController,
    required this.wonkyCharLargeSize,
    required this.wonkyCharSmallSize,
  });
}

class SinglePage extends StatefulWidget {
  final PageConfig pageConfig;
  const SinglePage({
    super.key,
    required this.pageConfig,
  });

  @override
  State<SinglePage> createState() => SinglePageState();
}

class SinglePageState extends State<SinglePage> with TickerProviderStateMixin {
  List<Widget> buildWonkyChars() {
    return <Widget>[];
  }

  Widget createPuzzle() {
    return Container();
  }

  Widget createTopicIntro() {
    return LightboxedPanel(
      pageConfig: widget.pageConfig,
      content: const [],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> c = [];
    c.add(createPuzzle());
    c += buildWonkyChars();
    c.add(createTopicIntro());
    return Stack(
      children: c,
    );
  }

  void puzzleDone() {}
}

class NarrativePage extends StatefulWidget {
  final PageConfig pageConfig;
  const NarrativePage({
    super.key,
    required this.pageConfig,
  });

  @override
  State<NarrativePage> createState() => NarrativePageState();
}

class NarrativePageState extends State<NarrativePage>
    with TickerProviderStateMixin {
  int panelIndex = 0;
  List<LightboxedPanel> panels = [];

  void handleIntroDismiss() {
    Future.delayed(const Duration(milliseconds: 50), () {
      setState(() {
        if (panelIndex == panels.length - 1) {
          widget.pageConfig.pageController.nextPage(
            duration:
                const Duration(milliseconds: PagesFlow.pageScrollDuration),
            curve: Curves.easeOut,
          );
        } else {
          panelIndex++;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (panelIndex) {
      default:
        return Container();
    }
  }

  void puzzleDone() {}
}
