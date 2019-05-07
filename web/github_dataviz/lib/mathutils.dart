abstract class Interpolator {
  double get(double x);
}

class EarlyInterpolator implements Interpolator {
  double amount;

  EarlyInterpolator(this.amount);

  @override
  double get(double x) {
    if (x >= amount) {
      return 1;
    } else {
      return MathUtils.map(x, 0, amount, 0, 1);
    }
  }
}

class Point2D {
  double x, y;

  Point2D(this.x, this.y);
}

class MathUtils {
  static double map(double x, double a, double b, double u, double v) {
    double p = (x - a) / (b - a);
    return u + p * (v - u);
  }

  static double clampedMap(double x, double a, double b, double u, double v) {
    if (x <= a) {
      return u;
    } else if (x >= b) {
      return v;
    } else {
      double p = (x - a) / (b - a);
      return u + p * (v - u);
    }
  }

  static double clamp(double x, double a, double b) {
    if (x < a) return a;
    if (x > b) return b;
    return x;
  }
}
