import 'package:flutter/material.dart';

class BottomBarShapeBorder extends ShapeBorder {
  final double radius;

  const BottomBarShapeBorder(this.radius);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path(); // Define inner path if needed
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    // Define your custom shape path here
    Path path = Path();
    path.moveTo(rect.left, rect.top - radius);
    path.quadraticBezierTo(
      rect.left,
      rect.top,
      rect.left + radius,
      rect.top,
    );

    path.lineTo(rect.right - radius, rect.top);
    path.quadraticBezierTo(
      rect.right,
      rect.top,
      rect.right,
      rect.bottom,
    );

    path.lineTo(rect.left, rect.bottom);
    path.lineTo(rect.left, rect.top + radius);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // Define your painting logic here
    Paint paint = Paint()..color = Colors.transparent;
    canvas.drawPath(getOuterPath(rect), paint);
  }

  @override
  ShapeBorder scale(double t) {
    // Implement scaling if needed
    return this;
  }
}
