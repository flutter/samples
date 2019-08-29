import 'dart:math' as math;

class Point extends math.Point<int> {
  Point(int x, int y) : super(x, y);

  @override
  Point operator +(math.Point<int> other) => Point(x + other.x, y + other.y);
}
