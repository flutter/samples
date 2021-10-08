import 'package:github_dataviz/mathutils.dart';

class ControlPointAndValue {
  late int point;
  double? value;

  ControlPointAndValue() {
    value = 0;
    point = 2;
  }
}

class CatmullInterpolator implements Interpolator {
  List<Point2D> controlPoints;

  CatmullInterpolator(this.controlPoints);

  @override
  double get(double v) {
    for (int i = 2; i < controlPoints.length - 1; i++) {
      if (controlPoints[i].x >= v) {
        double t = (v - controlPoints[i - 1].x) /
            (controlPoints[i].x - controlPoints[i - 1].x);
        double p0 = controlPoints[i - 2].y;
        double p1 = controlPoints[i - 1].y;
        double p2 = controlPoints[i].y;
        double p3 = controlPoints[i + 1].y;
        return 0.5 *
            ((2 * p1) +
                (p2 - p0) * t +
                (2 * p0 - 5 * p1 + 4 * p2 - p3) * t * t +
                (3 * p1 - p0 - 3 * p2 + p3) * t * t * t);
      }
    }
    // Will be unreachable if the control points were set up right
    return 0;
  }

  ControlPointAndValue progressiveGet(ControlPointAndValue cpv) {
    double? v = cpv.value;
    for (int i = cpv.point; i < controlPoints.length - 1; i++) {
      if (controlPoints[i].x >= v!) {
        double t = (v - controlPoints[i - 1].x) /
            (controlPoints[i].x - controlPoints[i - 1].x);
        double p0 = controlPoints[i - 2].y;
        double p1 = controlPoints[i - 1].y;
        double p2 = controlPoints[i].y;
        double p3 = controlPoints[i + 1].y;
        cpv.value = 0.5 *
            ((2 * p1) +
                (p2 - p0) * t +
                (2 * p0 - 5 * p1 + 4 * p2 - p3) * t * t +
                (3 * p1 - p0 - 3 * p2 + p3) * t * t * t);
        cpv.point = i;
        return cpv;
      }
    }
    // Will be unreachable if the control points were set up right
    return cpv;
  }

  static void test() {
    List<Point2D> controlPoints = <Point2D>[];
    controlPoints.add(Point2D(-1, 1));
    controlPoints.add(Point2D(0, 1));
    controlPoints.add(Point2D(1, -1));
    controlPoints.add(Point2D(3, 4));
    controlPoints.add(Point2D(10, -2));
    controlPoints.add(Point2D(11, -2));
    CatmullInterpolator catmull = CatmullInterpolator(controlPoints);
    print(catmull.get(0));
    print(catmull.get(1));
    print(catmull.get(2));
    print(catmull.get(5));
    print(catmull.get(7));
    print(catmull.get(8));
    print(catmull.get(10));
  }
}
