// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../model/puzzle_model.dart';
import '../page_content/pages_flow.dart';
import 'components.dart';

class RotatorPuzzle extends StatefulWidget {
  final PageConfig pageConfig;
  final int numTiles;
  final int puzzleNum;
  final Shader shader;
  final int shaderDuration;

  final String tileShadedString;
  final double tileShadedStringSize;
  final EdgeInsets tileShadedStringPadding;
  final int tileShadedStringAnimDuration;
  final List<WonkyAnimSetting> tileShadedStringAnimSettings;
  final double tileScaleModifier;

  const RotatorPuzzle({
    super.key,
    required this.pageConfig,
    required this.numTiles,
    required this.puzzleNum,
    required this.shader,
    required this.shaderDuration,
    required this.tileShadedString,
    required this.tileShadedStringSize,
    required this.tileShadedStringPadding,
    required this.tileShadedStringAnimDuration,
    this.tileShadedStringAnimSettings = const [],
    this.tileScaleModifier = 1.0,
  });

  @override
  State<RotatorPuzzle> createState() => RotatorPuzzleState();
}

class RotatorPuzzleState extends State<RotatorPuzzle>
    with TickerProviderStateMixin {
  late PuzzleModel puzzleModel;
  bool solved = false;
  late final AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1000),
  );
  late final CurvedAnimation animationCurve = CurvedAnimation(
    parent: animationController,
    curve: const Interval(
      0.2,
      0.45,
      curve: Curves.easeOut,
    ),
  );
  late Animation<double> opacAnimation =
      Tween<double>(begin: 0.4, end: 1.0).animate(animationCurve)
        ..addListener(() {
          setState(() {});
        });

  List<GlobalKey<RotatorPuzzleTileState>> tileKeys = [];
  GlobalKey<FragmentShadedState> shadedWidgetStackHackStateKey = GlobalKey();
  GlobalKey shadedWidgetRepaintBoundaryKey = GlobalKey();
  GlobalKey<WonkyCharState> tileBgWonkyCharKey = GlobalKey();
  ui.Image? shadedImg;

  @override
  void initState() {
    for (int i = 0; i < widget.numTiles; i++) {
      tileKeys.add(GlobalKey<RotatorPuzzleTileState>());
    }
    puzzleModel = PuzzleModel(
      dim: widget.numTiles,
    ); //TODO check if correct; correlate dim and numTiles; probably get rid of numTiles
    generateTiles();
    shuffle();
    super.initState();
  }

  List<RotatorPuzzleTile> generateTiles() {
    // TODO move to build?
    List<RotatorPuzzleTile> tiles = [];
    int dim = sqrt(widget.numTiles).round();
    for (int i = 0; i < widget.numTiles; i++) {
      RotatorPuzzleTile tile = RotatorPuzzleTile(
        key: tileKeys[i],
        tileID: i,
        row: (i / dim).floor(),
        col: i % dim,
        parentState: this,
        shader: widget.shader,
        shaderDuration: widget.shaderDuration,
        tileShadedString: widget.tileShadedString,
        tileShadedStringSize: widget.tileShadedStringSize,
        tileShadedStringPadding: widget.tileShadedStringPadding,
        animationSettings: widget.tileShadedStringAnimSettings,
        tileShadedStringAnimDuration: widget.tileShadedStringAnimDuration,
        tileScaleModifier: widget.tileScaleModifier,
      );
      tiles.add(tile);
    }
    return tiles;
  }

  void handlePointerDown({required int tileID}) {
    puzzleModel.rotateTile(tileID);
    if (puzzleModel.allRotationsCorrect()) {
      handleSolved();
    }
  }

  void handleSolved() {
    animationController.addStatusListener((status) {
      solved = true;
      for (GlobalKey<RotatorPuzzleTileState> k in tileKeys) {
        if (null != k.currentState && k.currentState!.mounted) {
          startDampening();
          tileBgWonkyCharKey.currentState!.stopAnimation();
        }
      }
      if (status == AnimationStatus.completed) {
        Future.delayed(
            const Duration(milliseconds: FragmentShaded.dampenDuration + 250),
            () {
          widget.pageConfig.pageController.nextPage(
            duration:
                const Duration(milliseconds: PagesFlow.pageScrollDuration),
            curve: Curves.easeOut,
          );
        });
      }
    });
    animationController.forward();
  }

  void shuffle() {
    Random rng = Random(0xC00010FF);
    for (int i = 0; i < widget.numTiles; i++) {
      int rando = rng.nextInt(3);
      puzzleModel.setTileStatus(i, rando);
      if (puzzleModel.allRotationsCorrect()) {
        // fallback to prevent starting on solved puzzle
        puzzleModel.setTileStatus(0, 1);
      }
    }
  }

  double tileSize() {
    return widget.pageConfig.puzzleSize / sqrt(widget.numTiles);
  }

  List<double> tileCoords({required int row, required int col}) {
    return <double>[col * tileSize(), row * tileSize()];
  }

  void setImageFromRepaintBoundary(GlobalKey which) {
    final BuildContext? context = which.currentContext;
    if (null != context) {
      final RenderRepaintBoundary boundary =
          context.findRenderObject()! as RenderRepaintBoundary;
      final ui.Image img = boundary.toImageSync();
      if (mounted) {
        setState(() {
          shadedImg = img;
        });
      }
    }
  }

  void startDampening() {
    if (null != shadedWidgetStackHackStateKey.currentState &&
        shadedWidgetStackHackStateKey.currentState!.mounted) {
      shadedWidgetStackHackStateKey.currentState!.startDampening();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO fix widget implementation to remove the need for this hack
    // to force a setState rebuild
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {});
      }
    });
    // end hack ----------------
    setImageFromRepaintBoundary(shadedWidgetRepaintBoundaryKey);
    return Center(
      child: SizedBox(
        width: widget.pageConfig.puzzleSize,
        height: widget.pageConfig.puzzleSize,
        child: Opacity(
          opacity: opacAnimation.value,
          child: Stack(
            children: <Widget>[
                  Positioned(
                    left: -9999,
                    top: -9999,
                    child: RepaintBoundary(
                      key: shadedWidgetRepaintBoundaryKey,
                      child: SizedBox(
                        width: widget.pageConfig.puzzleSize * 4,
                        height: widget.pageConfig.puzzleSize * 4,
                        child: Center(
                          child: FragmentShaded(
                            key: shadedWidgetStackHackStateKey,
                            shader: widget.shader,
                            shaderDuration: widget.shaderDuration,
                            child: Padding(
                              padding: widget.tileShadedStringPadding,
                              child: WonkyChar(
                                key: tileBgWonkyCharKey,
                                text: widget.tileShadedString,
                                size: widget.tileShadedStringSize,
                                animDurationMillis:
                                    widget.tileShadedStringAnimDuration,
                                animationSettings:
                                    widget.tileShadedStringAnimSettings,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ] +
                generateTiles(),
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////

class RotatorPuzzleTile extends StatefulWidget {
  final int tileID;
  final RotatorPuzzleState parentState;
  final Shader shader;
  final int shaderDuration;
  final String tileShadedString;
  final double tileShadedStringSize;
  final EdgeInsets tileShadedStringPadding;
  final int tileShadedStringAnimDuration;
  final List<WonkyAnimSetting> animationSettings;
  final double tileScaleModifier;

  // TODO get row/col out into model
  final int row;
  final int col;

  RotatorPuzzleTile({
    super.key,
    required this.tileID,
    required this.row,
    required this.col,
    required this.parentState,
    required this.shader,
    required this.shaderDuration,
    required this.tileShadedString,
    required this.tileShadedStringSize,
    required this.tileShadedStringPadding,
    required this.animationSettings,
    required this.tileShadedStringAnimDuration,
    required this.tileScaleModifier,
  });

  final State<RotatorPuzzleTile> tileState = RotatorPuzzleTileState();

  @override
  State<RotatorPuzzleTile> createState() => RotatorPuzzleTileState();
}

class RotatorPuzzleTileState extends State<RotatorPuzzleTile>
    with TickerProviderStateMixin {
  double touchedOpac = 0.0;
  Duration touchedOpacDur = const Duration(milliseconds: 50);
  late final AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 100,
    ),
  );
  late final CurvedAnimation animationCurve = CurvedAnimation(
    parent: animationController,
    curve: Curves.easeOut,
  );
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animation = Tween<double>(
      // initialize animation to starting point
      begin: currentStatus() * pi * 0.5,
      end: currentStatus() * pi * 0.5,
    ).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    // TODO fix widget implementation to remove the need for this hack
    // to force a setState rebuild
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {});
      }
    });
    // end hack ------------------------------
    List<double> coords =
        widget.parentState.tileCoords(row: widget.row, col: widget.col);
    double zeroPoint = widget.parentState.widget.pageConfig.puzzleSize * .5 -
        widget.parentState.tileSize() * 0.5;

    return Stack(
      children: [
        Stack(
          children: [
            Positioned(
              left: coords[0],
              top: coords[1],
              child: Transform(
                transform: Matrix4.rotationZ(animation.value),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: handlePointerDown,
                  child: ClipRect(
                    child: SizedBox(
                      width: widget.parentState.tileSize(),
                      height: widget.parentState.tileSize(),
                      child: OverflowBox(
                        maxHeight:
                            widget.parentState.widget.pageConfig.puzzleSize,
                        maxWidth:
                            widget.parentState.widget.pageConfig.puzzleSize,
                        child: Transform.translate(
                          offset: Offset(
                            zeroPoint -
                                widget.col * widget.parentState.tileSize(),
                            zeroPoint -
                                widget.row * widget.parentState.tileSize(),
                          ),
                          child: SizedBox(
                            width:
                                widget.parentState.widget.pageConfig.puzzleSize,
                            height:
                                widget.parentState.widget.pageConfig.puzzleSize,
                            child: Transform.scale(
                              scale: widget.tileScaleModifier,
                              child: RawImage(
                                image: widget.parentState.shadedImg,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // puzzle tile overlay fades in/out on tap, to indicate touched tile
            Positioned(
              left: coords[0],
              top: coords[1],
              child: IgnorePointer(
                child: AnimatedOpacity(
                  opacity: touchedOpac,
                  duration: touchedOpacDur,
                  onEnd: () {
                    if (touchedOpac == 1.0) {
                      touchedOpac = 0.0;
                      touchedOpacDur = const Duration(milliseconds: 300);
                      setState(() {});
                    }
                  },
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(120, 0, 0, 0)),
                    child: SizedBox(
                      width: widget.parentState.tileSize(),
                      height: widget.parentState.tileSize(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void handlePointerDown() {
    if (!widget.parentState.solved) {
      int oldStatus = currentStatus();
      widget.parentState.handlePointerDown(tileID: widget.tileID);
      touchedOpac = 1.0;
      touchedOpacDur = const Duration(milliseconds: 100);
      rotateTile(oldStatus: oldStatus);
      setState(() {});
    }
  }

  int currentStatus() {
    return widget.parentState.puzzleModel.getTileStatus(widget.tileID);
  }

  void rotateTile({required int oldStatus}) {
    animation = Tween<double>(
      begin: oldStatus * pi * 0.5,
      end: currentStatus() * pi * 0.5,
    ).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.reset();
    animationController.forward();
  }
}
