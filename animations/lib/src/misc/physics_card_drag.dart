// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsCardDragDemo extends StatelessWidget {
  const PhysicsCardDragDemo({super.key});
  static const String routeName = 'misc/physics_card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spring Physics')),
      body: const DraggableCard(child: FlutterLogo(size: 128)),
    );
  }
}

/// A draggable card that moves back to [Alignment.center] when it's
/// released.
class DraggableCard extends StatefulWidget {
  const DraggableCard({required this.child, super.key});
  final Widget child;

  @override
  State<DraggableCard> createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  /// The alignment of the card as it is dragged or being animated.
  ///
  /// While the card is being dragged, this value is set to the values computed
  /// in the GestureDetector onPanUpdate callback. If the animation is running,
  /// this value is set to the value of the [_animation].
  var _dragAlignment = Alignment.center;

  late Animation<Alignment> _animation;

  final _spring = const SpringDescription(
    mass: 10,
    stiffness: 1000,
    damping: 0.7,
  );

  /// Calculate the velocity relative to the unit interval, [0,1],
  /// used by the animation controller.
  double _normalizeVelocity(Offset velocity, Size size) {
    final normalizedVelocity = Offset(
      velocity.dx / size.width,
      velocity.dy / size.height,
    );
    // Returning negative implies dragging away from center
    return -normalizedVelocity.distance;
  }

  /// Calculates and runs a [SpringSimulation]
  void _runAnimation(Offset velocity, Size size) {
    _animation = _controller.drive(
      AlignmentTween(begin: _dragAlignment, end: Alignment.center),
    );

    final simulation = SpringSimulation(
      _spring,
      0,
      1,
      _normalizeVelocity(velocity, size),
    );

    _controller.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this)
      ..addListener(() => setState(() => _dragAlignment = _animation.value));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanStart: (details) => _controller.stop(canceled: true),
      onPanUpdate:
          (details) => setState(
            () =>
                _dragAlignment += Alignment(
                  details.delta.dx / (size.width / 2),
                  details.delta.dy / (size.height / 2),
                ),
          ),
      onPanEnd:
          (details) => _runAnimation(details.velocity.pixelsPerSecond, size),
      child: Align(alignment: _dragAlignment, child: Card(child: widget.child)),
    );
  }
}
