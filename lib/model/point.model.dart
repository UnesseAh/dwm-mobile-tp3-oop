import 'dart:math';

class Point {
  final double x;
  final double y;

  const Point({required this.x, required this.y});

  double distance(Point p) {
    double w = p.x - x;
    double h = p.y - y;
    return sqrt(w * w + h * w);
  }

  @override
  String toString() => 'Point(x: $x, y: $y)';

  Point copyWith({double? x, double? y}) {
    return Point(x: x ?? this.x, y: y ?? this.y);
  }
}
