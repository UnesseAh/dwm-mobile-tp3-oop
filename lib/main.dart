import 'package:oop_dart_renault/model/point.model.dart';

void main() {
  Point p1 = const Point(x: 89, y: 67);
  Point p2 = const Point(x: 89, y: 67);
  Point p3 = Point.fromList([7, 90]);
  Point p4 = Point.fromJson({'x': 6.0, 'y': 45.0});
  print(p1.toJson());
  // print(identical(p1, p2));
}
