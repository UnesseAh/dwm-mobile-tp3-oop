import 'dart:math';

class Point {
  final double x;
  final double y;

  const Point({required this.x, required this.y});

  factory Point.fromList(List<double> data) {
    return Point(x: data[0], y: data[1]);
  }

  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(x: json['x'], y: json['y']);
  }

  Map<String, dynamic> toJson() {
    return {'x': x, 'y': y};
  }

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
