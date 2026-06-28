import 'package:oop_dart_renault/model/point.model.dart';
import 'package:oop_dart_renault/model/shape.model.dart';

void main() {
  // Point p1 = const Point(x: 89, y: 67);
  // Point p2 = const Point(x: 89, y: 67);
  // Point p3 = Point.fromList([7, 90]);
  // Point p4 = Point.fromJson({'x': 6.0, 'y': 45.0});
  // print(p1.toJson());
  // print(identical(p1, p2));

  Shape shape1 = Circle(p1: Point(x: 10, y: 20), p2: Point(x: 70, y: 34));
  Shape shape2 = Rectangle(p1: Point(x: 55, y: 99), p2: Point(x: 45, y: 12));

  print(shape1.getArea());
  print(shape1.getPerimeter());
  print((shape2 as Circle).getRadius());
  if (shape1 is Circle) {
    print(shape1.getRadius());
  }
}
