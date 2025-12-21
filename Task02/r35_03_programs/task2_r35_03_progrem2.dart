import 'dart:math';

class Shape {
  String name;

  Shape({required this.name});

  double calculateArea() {
    return 0.0;
  }
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius}) : super(name: 'Circle');
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle({required this.length, required this.width})
    : super(name: 'Rectangle');

  @override
  double calculateArea() {
    return length * width;
  }
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle({required this.base, required this.height})
    : super(name: 'Triangle');

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}

void main() {
  List<Shape> shapes = [
    Circle(radius: 5.0),
    Rectangle(length: 4.0, width: 6.0),
    Triangle(base: 3.0, height: 4.0),
  ];

  print('=== Shape Areas ===');
  for (var shape in shapes) {
    if (shape is Circle) {
      print(
        '${shape.name} - Radius: ${shape.radius} - Area: ${shape.calculateArea()}',
      );
    } else if (shape is Rectangle) {
      print(
        '${shape.name} - Length: ${shape.length}, Width: ${shape.width} - Area: ${shape.calculateArea()}',
      );
    } else if (shape is Triangle) {
      print(
        '${shape.name} - Base: ${shape.base}, Height: ${shape.height} - Area: ${shape.calculateArea()}',
      );
    }
  }
}
