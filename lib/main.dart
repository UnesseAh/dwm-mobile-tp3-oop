import 'package:oop_dart_renault/model/point.model.dart';

void main() {
  Point p1 = Point(x: 89, y: 67);
  print(p1.toString());
  print(p1.distance(Point(x: 10, y: 30)));
}
