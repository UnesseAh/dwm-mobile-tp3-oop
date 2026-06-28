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

class Rectangle extends Shape {
  Rectangle({required super.p1, required super.p2});

  @override
  double getArea() {
    return getHeight() * getWidth();
  }

  @override
  double getPerimeter() {
    return 2 * (getHeight() + getWidth());
  }

  double getHeight() {
    return (p1.y - p2.y).abs();
  }

  double getWidth() {
    return (p1.x - p2.x).abs();
  }
}
