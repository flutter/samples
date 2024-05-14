import 'package:flutter/material.dart';

class AppBarShapeBorder extends ShapeBorder {
  final double radius;

  const AppBarShapeBorder(this.radius);

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
    path.moveTo(rect.left, rect.top);
    path.lineTo(rect.left, rect.bottom - (radius * 2));

    path.quadraticBezierTo(
      rect.left,
      rect.bottom - radius,
      rect.left + radius,
      rect.bottom - radius,
    );

    path.lineTo(rect.right - radius, rect.bottom - radius);

    path.quadraticBezierTo(
        rect.right, rect.bottom - radius, rect.right, rect.bottom);

    path.lineTo(rect.right, rect.top);
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
