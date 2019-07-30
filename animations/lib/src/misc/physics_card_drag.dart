import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsCardDragDemo extends StatelessWidget {
  static const String routeName = '/misc/physics_card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DraggableCard(
        child: FlutterLogo(
          size: 128,
        ),
      ),
    );
  }
}

/// A draggable card that moves back to [Alignment.center] when it's
/// released.
class DraggableCard extends StatefulWidget {
  final Widget child;
  DraggableCard({this.child});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

/// A draggable card that moves back to [Alignment.center] when it's
/// released.
class _DraggableCardState extends State<DraggableCard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  /// The position the user has dragged the card to. Represented as an
  /// [Alignment].
  Alignment _dragAlignment = Alignment.center;

  Animation<Alignment> _animation;

  /// Update the animation so that it runs from the dragged point back to the
  /// center.
  void _updateAnimation() {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this);

    _controller.addListener(() {
      setState(() {
        _dragAlignment = _animation.value;
      });
    });
    _updateAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details) {
        _controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height / 2),
          );
        });
      },
      onPanEnd: (details) {
        _updateAnimation();
        // Calculate the velocity relative to the unit interval, [0,1],
        // used by the animation controller.
        var pxPerSecond = details.velocity.pixelsPerSecond;
        var unitsPerSecondX = pxPerSecond.dx / size.width;
        var unitsPerSecondY = pxPerSecond.dy / size.height;
        var unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
        var unitVelocity = unitsPerSecond.distance;

        var spring = SpringDescription(
          mass: 30,
          stiffness: 1,
          damping: 1,
        );
        var simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

        _controller.animateWith(simulation);
      },
      child: Align(
        alignment: _dragAlignment,
        child: Card(
          child: widget.child,
        ),
      ),
    );
  }
}
