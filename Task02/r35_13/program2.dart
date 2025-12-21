import 'dart:math';

abstract class Shape {
  final String name;
  Shape({required this.name});
  void area() {}
}

class Circle extends Shape {
  final double radius;
  Circle({required super.name, required this.radius});
  @override
  void area() {
    print('$name - radius: $radius - area: ${radius * radius * pi}');
    super.area();
  }
}

class Rectangle extends Shape {
  final double length;
  final double width;
  Rectangle({required super.name, required this.length, required this.width});
  @override
  void area() {
    print('$name - Length: $length - Width: $width - area: ${length * width}');
    super.area();
  }
}

class Triangle extends Shape {
  final double base;
  final double height;

  Triangle({required super.name, required this.base, required this.height});
  @override
  void area() {
    print(
      '$name - Base: $base - Height: $height - area: ${.5 * base * height}',
    );
    super.area();
  }
}

void main() {
  final circle = Circle(name: 'Circle', radius: 3);
  final rec = Rectangle(name: 'Rectangle', length: 2, width: 3);
  final tr = Triangle(name: 'Triangle', base: 4, height: 5);
  circle.area();
  rec.area();
  tr.area();
}
