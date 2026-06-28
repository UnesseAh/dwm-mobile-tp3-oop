import 'dart:math';

class Point {
  double x;
  double y;

  Point({required this.x, required this.y});

  double distance(Point p) {
    double w = p.x - x;
    double h = p.y - y;
    return sqrt(w * w + h * w);
  }

  @override
  String toString() => 'Point(x: $x, y: $y)';
}
