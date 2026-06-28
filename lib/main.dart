import 'package:oop_dart_renault/model/point.model.dart';

void main() {
  Point p1 = const Point(x: 89, y: 67);
  Point p2 = const Point(x: 89, y: 67);
  Point p3 = Point.fromList([7, 90]);
  print(p3);
  print(identical(p1, p2));
}
