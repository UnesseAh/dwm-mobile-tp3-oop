import 'dart:math';

import 'package:oop_dart_renault/model/point.model.dart';

abstract class Shape {
  final Point p1;
  final Point p2;
  Shape({required this.p1, required this.p2});

  double getPerimeter();
  double getArea();

  @override
  String toString() => 'Shape(p1: $p1, p2: $p2)';
}

class Circle extends Shape {
  Circle({required super.p1, required super.p2});

  @override
  double getArea() {
    double radius = getRadius();
    return pi * radius * radius;
  }

  @override
  double getPerimeter() {
    double radius = getRadius();
    return 2 * pi * radius * radius;
  }

  double getRadius() {
    return p1.distance(p2);
  }
}
