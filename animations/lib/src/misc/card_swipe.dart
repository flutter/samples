import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class CardSwipeDemo extends StatefulWidget {
  static String routeName = '/misc/card_swipe';

  @override
  _CardSwipeDemoState createState() => _CardSwipeDemoState();
}

class _CardSwipeDemoState extends State<CardSwipeDemo> {
  var fileNames = [
    'assets/eat_cape_town_sm.jpg',
    'assets/eat_new_orleans_sm.jpg',
    'assets/eat_sydney_sm.jpg',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Swipe'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 500,
              child: Stack(
                children: <Widget>[
                  for (final fileName in fileNames)
                    SwipeableCard(
                      image: fileName,
                      onSwiped: () {
                        setState(() {
                          fileNames.remove(fileName);
                        });
                      },
                    ),
                ],
              ),
            ),
            RaisedButton(
              child: const Text('Refill'),
              onPressed: () {
                setState(() {
                  fileNames = [
                    'assets/eat_sydney_sm.jpg',
                    'assets/eat_cape_town_sm.jpg',
                    'assets/eat_new_orleans_sm.jpg',
                  ];
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String image;

  Card(this.image);

  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 5,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class SwipeableCard extends StatefulWidget {
  final String image;
  final VoidCallback onSwiped;

  SwipeableCard({
    this.onSwiped,
    this.image,
  });

  _SwipeableCardState createState() => _SwipeableCardState(this.image);
}

class _SwipeableCardState extends State<SwipeableCard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;
  double _dragStartLocalPosition, _currentPosition;
  final String image;

  _SwipeableCardState(this.image);

  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this);
    _animation = _controller.drive(Tween<Offset>(
      begin: const Offset(0, 0),
      end: Offset(1, 0),
    ));
  }

  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: GestureDetector(
        onHorizontalDragStart: _dragStart,
        onHorizontalDragUpdate: _dragUpdate,
        onHorizontalDragEnd: _dragEnd,
        child: Card(image),
      ),
    );
  }

  void _dragStart(DragStartDetails details) {
    _dragStartLocalPosition = details.localPosition.dx;
  }

  void _dragUpdate(DragUpdateDetails details) {
    _currentPosition = details.localPosition.dx;
    var delta = _currentPosition - _dragStartLocalPosition;
    _controller.value = delta / context.size.width;
  }

  void _dragEnd(DragEndDetails details) {
    var dx = -details.velocity.pixelsPerSecond.dx / context.size.width;
    _animate(velocity: dx);
    _dragStartLocalPosition = 0;
  }

  void _animate({double velocity = 0}) {
    double end = (_currentPosition > _dragStartLocalPosition) ? 1.5 : -1.5;
    var description = SpringDescription(mass: 50, stiffness: 1, damping: 1);
    var simulation =
    ScrollSpringSimulation(description, _controller.value, end, velocity);
    _controller.animateWith(simulation).then((_) {
      widget.onSwiped();
    });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
