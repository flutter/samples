// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui' show Vertices;
import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'transformations_demo_board.dart';
import 'transformations_demo_edit_board_point.dart';
import 'transformations_demo_gesture_transformable.dart';

// BEGIN transformationsDemo#1

class TransformationsDemo extends StatefulWidget {
  const TransformationsDemo({Key key}) : super(key: key);

  @override
  _TransformationsDemoState createState() => _TransformationsDemoState();
}

class _TransformationsDemoState extends State<TransformationsDemo> {
  // The radius of a hexagon tile in pixels.
  static const _kHexagonRadius = 32.0;
  // The margin between hexagons.
  static const _kHexagonMargin = 1.0;
  // The radius of the entire board in hexagons, not including the center.
  static const _kBoardRadius = 12;

  bool _reset = false;
  Board _board = Board(
    boardRadius: _kBoardRadius,
    hexagonRadius: _kHexagonRadius,
    hexagonMargin: _kHexagonMargin,
  );

  @override
  Widget build(BuildContext context) {
    final BoardPainter painter = BoardPainter(
      board: _board,
    );

    // The scene is drawn by a CustomPaint, but user interaction is handled by
    // the GestureTransformable parent widget.
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            Text(GalleryLocalizations.of(context).demo2dTransformationsTitle),
      ),
      body: Container(
        color: backgroundColor,
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Draw the scene as big as is available, but allow the user to
            // translate beyond that to a visibleSize that's a bit bigger.
            final Size size = Size(constraints.maxWidth, constraints.maxHeight);
            final Size visibleSize = Size(size.width * 3, size.height * 2);
            return GestureTransformable(
              reset: _reset,
              onResetEnd: () {
                setState(() {
                  _reset = false;
                });
              },
              child: CustomPaint(
                painter: painter,
              ),
              boundaryRect: Rect.fromLTWH(
                -visibleSize.width / 2,
                -visibleSize.height / 2,
                visibleSize.width,
                visibleSize.height,
              ),
              // Center the board in the middle of the screen. It's drawn centered
              // at the origin, which is the top left corner of the
              // GestureTransformable.
              initialTranslation: Offset(size.width / 2, size.height / 2),
              onTapUp: _onTapUp,
              size: size,
            );
          },
        ),
      ),
      persistentFooterButtons: [resetButton, editButton],
    );
  }

  IconButton get resetButton {
    return IconButton(
      onPressed: () {
        setState(() {
          _reset = true;
        });
      },
      tooltip:
          GalleryLocalizations.of(context).demo2dTransformationsResetTooltip,
      color: Theme.of(context).colorScheme.surface,
      icon: const Icon(Icons.replay),
    );
  }

  IconButton get editButton {
    return IconButton(
      onPressed: () {
        if (_board.selected == null) {
          return;
        }
        showModalBottomSheet<Widget>(
            context: context,
            builder: (context) {
              return Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.all(12),
                child: EditBoardPoint(
                  boardPoint: _board.selected,
                  onColorSelection: (color) {
                    setState(() {
                      _board = _board.copyWithBoardPointColor(
                          _board.selected, color);
                      Navigator.pop(context);
                    });
                  },
                ),
              );
            });
      },
      tooltip:
          GalleryLocalizations.of(context).demo2dTransformationsEditTooltip,
      color: Theme.of(context).colorScheme.surface,
      icon: const Icon(Icons.edit),
    );
  }

  void _onTapUp(TapUpDetails details) {
    final Offset scenePoint = details.globalPosition;
    final BoardPoint boardPoint = _board.pointToBoardPoint(scenePoint);
    setState(() {
      _board = _board.copyWithSelected(boardPoint);
    });
  }
}

// CustomPainter is what is passed to CustomPaint and actually draws the scene
// when its `paint` method is called.
class BoardPainter extends CustomPainter {
  const BoardPainter({
    this.board,
  });

  final Board board;

  @override
  void paint(Canvas canvas, Size size) {
    void drawBoardPoint(BoardPoint boardPoint) {
      final Color color = boardPoint.color.withOpacity(
        board.selected == boardPoint ? 0.7 : 1,
      );
      final Vertices vertices =
          board.getVerticesForBoardPoint(boardPoint, color);
      canvas.drawVertices(vertices, BlendMode.color, Paint());
    }

    board.forEach(drawBoardPoint);
  }

  // We should repaint whenever the board changes, such as board.selected.
  @override
  bool shouldRepaint(BoardPainter oldDelegate) {
    return oldDelegate.board != board;
  }
}

// END
