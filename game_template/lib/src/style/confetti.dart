// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:math';

import 'package:flutter/widgets.dart';

/// Shows a confetti (celebratory) animation: paper snippings falling down.
///
/// The widget fills the available space (like [SizedBox.expand] would).
///
/// When [isStopped] is `true`, the animation will not run. This is useful
/// when the widget is not visible yet, for example. Provide [colors]
/// to make the animation look good in context.
///
/// This is a partial port of this CodePen by Hemn Chawroka:
/// https://codepen.io/iprodev/pen/azpWBr
class Confetti extends StatefulWidget {
  static const _defaultColors = [
    Color(0xffd10841),
    Color(0xff1d75fb),
    Color(0xff0050bc),
    Color(0xffa2dcc7),
  ];

  final bool isStopped;

  final List<Color> colors;

  const Confetti({
    this.colors = _defaultColors,
    this.isStopped = false,
    super.key,
  });

  @override
  State<Confetti> createState() => _ConfettiState();
}

class ConfettiPainter extends CustomPainter {
  final defaultPaint = Paint();

  final int snippingsCount = 200;

  late final List<_PaperSnipping> _snippings;

  Size? _size;

  DateTime _lastTime = DateTime.now();

  final UnmodifiableListView<Color> colors;

  ConfettiPainter({
    required Listenable animation,
    required Iterable<Color> colors,
  }) : colors = UnmodifiableListView(colors),
       super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    if (_size == null) {
      // First time we have a size.
      _snippings = List.generate(
        snippingsCount,
        (i) =>
            _PaperSnipping(frontColor: colors[i % colors.length], bounds: size),
      );
    }

    final didResize = _size != null && _size != size;
    final now = DateTime.now();
    final dt = now.difference(_lastTime);
    for (final snipping in _snippings) {
      if (didResize) {
        snipping.updateBounds(size);
      }
      snipping.update(dt.inMilliseconds / 1000);
      snipping.draw(canvas);
    }

    _size = size;
    _lastTime = now;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _ConfettiState extends State<Confetti>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ConfettiPainter(colors: widget.colors, animation: _controller),
      willChange: true,
      child: const SizedBox.expand(),
    );
  }

  @override
  void didUpdateWidget(covariant Confetti oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isStopped && !widget.isStopped) {
      _controller.repeat();
    } else if (!oldWidget.isStopped && widget.isStopped) {
      _controller.stop(canceled: false);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      // We don't really care about the duration, since we're going to
      // use the controller on loop anyway.
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    if (!widget.isStopped) {
      _controller.repeat();
    }
  }
}

class _PaperSnipping {
  static final Random _random = Random();

  static const degToRad = pi / 180;

  static const backSideBlend = Color(0x70EEEEEE);

  Size _bounds;

  late final _Vector position = _Vector(
    _random.nextDouble() * _bounds.width,
    _random.nextDouble() * _bounds.height,
  );

  final double rotationSpeed = 800 + _random.nextDouble() * 600;

  final double angle = _random.nextDouble() * 360 * degToRad;

  double rotation = _random.nextDouble() * 360 * degToRad;

  double cosA = 1.0;

  final double size = 7.0;

  final double oscillationSpeed = 0.5 + _random.nextDouble() * 1.5;

  final double xSpeed = 40;

  final double ySpeed = 50 + _random.nextDouble() * 60;

  late List<_Vector> corners = List.generate(4, (i) {
    final angle = this.angle + degToRad * (45 + i * 90);
    return _Vector(cos(angle), sin(angle));
  });

  double time = _random.nextDouble();

  final Color frontColor;

  late final Color backColor = Color.alphaBlend(backSideBlend, frontColor);

  final paint = Paint()..style = PaintingStyle.fill;

  _PaperSnipping({required this.frontColor, required Size bounds})
    : _bounds = bounds;

  void draw(Canvas canvas) {
    if (cosA > 0) {
      paint.color = frontColor;
    } else {
      paint.color = backColor;
    }

    final path =
        Path()..addPolygon(
          List.generate(
            4,
            (index) => Offset(
              position.x + corners[index].x * size,
              position.y + corners[index].y * size * cosA,
            ),
          ),
          true,
        );
    canvas.drawPath(path, paint);
  }

  void update(double dt) {
    time += dt;
    rotation += rotationSpeed * dt;
    cosA = cos(degToRad * rotation);
    position.x += cos(time * oscillationSpeed) * xSpeed * dt;
    position.y += ySpeed * dt;
    if (position.y > _bounds.height) {
      // Move the snipping back to the top.
      position.x = _random.nextDouble() * _bounds.width;
      position.y = 0;
    }
  }

  void updateBounds(Size newBounds) {
    if (!newBounds.contains(Offset(position.x, position.y))) {
      position.x = _random.nextDouble() * newBounds.width;
      position.y = _random.nextDouble() * newBounds.height;
    }
    _bounds = newBounds;
  }
}

class _Vector {
  double x, y;
  _Vector(this.x, this.y);
}
