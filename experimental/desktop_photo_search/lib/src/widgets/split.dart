// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A widget that takes two children, lays them out along [axis], and allows
/// the user to resize them.
///
/// The user can customize the amount of space allocated to each child by
/// dragging a divider between them.
///
/// [initialFirstFraction] defines how much space to give the [firstChild]
/// when first building this widget. [secondChild] will take the remaining
/// space.
///
/// The user can drag the widget with key [dividerKey] to change
/// the space allocated between [firstChild] and [secondChild].
// TODO(djshuckerow): introduce support for a minimum fraction a child
//                    is allowed.
class Split extends StatefulWidget {
  /// Builds a split oriented along [axis].
  const Split({
    Key key,
    @required this.axis,
    @required this.firstChild,
    @required this.secondChild,
    double initialFirstFraction,
  })  : initialFirstFraction = initialFirstFraction ?? 0.5,
        assert(axis != null),
        assert(firstChild != null),
        assert(secondChild != null),
        super(key: key);

  /// The main axis the children will lay out on.
  ///
  /// If [Axis.horizontal], the children will be placed in a [Row]
  /// and they will be horizontally resizable.
  ///
  /// If [Axis.vertical], the children will be placed in a [Column]
  /// and they will be vertically resizable.
  ///
  /// Cannot be null.
  final Axis axis;

  /// The child that will be laid out first along [axis].
  final Widget firstChild;

  /// The child that will be laid out last along [axis].
  final Widget secondChild;

  /// The fraction of the layout to allocate to [firstChild].
  ///
  /// [secondChild] will receive a fraction of `1 - initialFirstFraction`.
  final double initialFirstFraction;

  /// The key passed to the divider between [firstChild] and [secondChild].
  ///
  /// Visible to grab it in tests.
  @visibleForTesting
  Key get dividerKey => Key('$this dividerKey');

  /// The size of the divider between [firstChild] and [secondChild] in
  /// logical pixels (dp, not px).
  static const double dividerMainAxisSize = 10;

  static Axis axisFor(BuildContext context, double horizontalAspectRatio) {
    final screenSize = MediaQuery.of(context).size;
    final aspectRatio = screenSize.width / screenSize.height;
    if (aspectRatio >= horizontalAspectRatio) {
      return Axis.horizontal;
    }
    return Axis.vertical;
  }

  @override
  State<StatefulWidget> createState() => _SplitState();
}

class _SplitState extends State<Split> {
  double firstFraction;

  double get secondFraction => 1 - firstFraction;

  bool get isHorizontal => widget.axis == Axis.horizontal;

  @override
  void initState() {
    super.initState();
    firstFraction = widget.initialFirstFraction;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: _buildLayout);
  }

  Widget _buildLayout(BuildContext context, BoxConstraints constraints) {
    final width = constraints.maxWidth;
    final height = constraints.maxHeight;
    final axisSize = isHorizontal ? width : height;
    final crossAxisSize = isHorizontal ? height : width;
    const halfDivider = Split.dividerMainAxisSize / 2.0;

    // Determine what fraction to give each child, including enough space to
    // display the divider.
    var firstSize = axisSize * firstFraction;
    var secondSize = axisSize * secondFraction;

    // Clamp the sizes to be sure there is enough space for the dividers.
    firstSize = firstSize.clamp(halfDivider, axisSize - halfDivider) as double;
    secondSize =
        secondSize.clamp(halfDivider, axisSize - halfDivider) as double;

    // Remove space from each child to place the divider in the middle.
    firstSize = firstSize - halfDivider;
    secondSize = secondSize - halfDivider;

    void updateSpacing(DragUpdateDetails dragDetails) {
      final delta = isHorizontal ? dragDetails.delta.dx : dragDetails.delta.dy;
      final fractionalDelta = delta / axisSize;
      setState(() {
        // Update the fraction of space consumed by the children,
        // being sure not to allocate any negative space.
        firstFraction += fractionalDelta;
        firstFraction = firstFraction.clamp(0.0, 1.0) as double;
      });
    }

    // TODO(https://github.com/flutter/flutter/issues/43747): use an icon.
    // The material icon for a drag handle is not currently available.
    // For now, draw an indicator that is 3 lines running in the direction
    // of the main axis, like a hamburger menu.
    // TODO(https://github.com/flutter/devtools/issues/1265): update mouse
    // to indicate that this is resizable.
    final dragIndicator = Flex(
      direction: isHorizontal ? Axis.vertical : Axis.horizontal,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < min(crossAxisSize / 6.0, 3).floor(); i++)
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: isHorizontal ? 2.0 : 0.0,
              horizontal: isHorizontal ? 0.0 : 2.0,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: BorderRadius.circular(Split.dividerMainAxisSize),
              ),
              child: SizedBox(
                height: isHorizontal ? 2.0 : Split.dividerMainAxisSize - 2.0,
                width: isHorizontal ? Split.dividerMainAxisSize - 2.0 : 2.0,
              ),
            ),
          ),
      ],
    );

    final children = [
      SizedBox(
        width: isHorizontal ? firstSize : width,
        height: isHorizontal ? height : firstSize,
        child: widget.firstChild,
      ),
      GestureDetector(
        key: widget.dividerKey,
        behavior: HitTestBehavior.translucent,
        onHorizontalDragUpdate: isHorizontal ? updateSpacing : null,
        onVerticalDragUpdate: isHorizontal ? null : updateSpacing,
        // DartStartBehavior.down is needed to keep the mouse pointer stuck to
        // the drag bar. There still appears to be a few frame lag before the
        // drag action triggers which is't ideal but isn't a launch blocker.
        dragStartBehavior: DragStartBehavior.down,
        child: SizedBox(
          width: isHorizontal ? Split.dividerMainAxisSize : width,
          height: isHorizontal ? height : Split.dividerMainAxisSize,
          child: Center(
            child: dragIndicator,
          ),
        ),
      ),
      SizedBox(
        width: isHorizontal ? secondSize : width,
        height: isHorizontal ? height : secondSize,
        child: widget.secondChild,
      ),
    ];
    return Flex(direction: widget.axis, children: children);
  }
}
