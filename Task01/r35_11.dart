// Program 1: Vehicle Inheritance
import 'dart:math';

class Vehicle {
  String brand;
  int year;

  Vehicle({
    required this.brand,
    required this.year,
  });

  showInfo() {
    print("Brand: $brand, Year: $year");
  }
}

class Car extends Vehicle {
  int doors;

  Car({
    required super.brand,
    required super.year,
    required this.doors,
  });

  @override
   showInfo() {
    print("Brand: $brand, Year: $year");
    print("Type: Car, Doors: $doors");
  }
}

class Motorcycle extends Vehicle {
  bool hasSidecar;

  Motorcycle({
    required super.brand,
    required super.year,
    required this.hasSidecar,
  });

  @override
   showInfo() {
    print("Brand: $brand, Year: $year");
    print("Type: Motorcycle, Has Sidecar: $hasSidecar");
  }
}

class Truck extends Vehicle {
  double cargoCapacity;

  Truck({
    required super.brand,
    required super.year,
    required this.cargoCapacity,
  });

  @override
  void showInfo() {
    print("Brand: $brand, Year: $year");
    print("Type: Truck, Cargo Capacity: $cargoCapacity tons");
  }
}

void main() {
  print("Vehicle Information");

  Car car = Car(brand: "Toyota", year: 2022, doors: 4);
  car.showInfo();



  Motorcycle moto = Motorcycle(
    brand: "Honda",
    year: 2021,
    hasSidecar: false,
  );
  moto.showInfo();

  Truck truck = Truck(
    brand: "Volvo",
    year: 2020,
    cargoCapacity: 15.5,
  );
  truck.showInfo();
}// Program 2: Shape Inheritance


class Shape {
  String name;

  Shape({required this.name});

  double calculateArea() {
    return 0;
  }

  void displayInfo() {
    print('$name Area: ${calculateArea()}');
  }
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius}) : super(name: 'Circle');

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  void displayInfo() {
    print('Circle - Radius: $radius - Area: ${calculateArea()}');
  }
}
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle({
    required this.length,
    required this.width,
  }) : super(name: 'Rectangle');

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  void displayInfo() {
    print('Rectangle - Length: $length, Width: $width - Area: ${calculateArea()}');
  }
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle({
    required this.base,
    required this.height,
  }) : super(name: 'Triangle');

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }

  @override
  displayInfo() {
    print('Triangle - Base: $base, Height: $height - Area: ${calculateArea()}');
  }
}

// void main() {
//   print('Shape Areas');

//   Circle circle = Circle(radius: 5);
//   circle.displayInfo();

//   Rectangle rectangle = Rectangle(length: 4, width: 6);
//   rectangle.displayInfo();

//   Triangle triangle = Triangle(base: 3, height: 4);
//   triangle.displayInfo();
// }

// Program 3: Employee Inheritance

abstract class Employee {
  String id;
  String name;
  double baseSalary;

  Employee({required this.id, required this.name, required this.baseSalary});

  double calculateSalary();

  void displayInfo();
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.bonus,
  });

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }

  @override
  void displayInfo() {

    print('ID: $id - Name: $name - Type: Full Time - Salary: $calculateSalary()');
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;

  PartTimeEmployee({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.hoursWorked,
    required this.hourlyRate,
  });

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }

  @override
  displayInfo() {
    print('ID: $id - Name: $name - Type: Part Time - Salary: $calculateSalary()');
  }
}

class Contractor extends Employee {
  double projectRate;

  Contractor({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.projectRate,
  });

  @override
  double calculateSalary() {
    return baseSalary * projectRate;
  }
  @override
  void displayInfo() {
    print('ID: $id - Name: $name - Type: Contractor - Salary: $calculateSalary()');
  }
}

// void main() {
//   print('Employee Salaries');

//   var emp1 = FullTimeEmployee(
//     id: '453453',
//     name: 'mada',
//     baseSalary: 5000.0,
//     bonus: 500.0,
//   );

//   var emp2 = PartTimeEmployee(
//     id: '7777',
//     name: 'mary',
//     baseSalary: 0.0,
//     hoursWorked: 120.0,
//     hourlyRate: 20.0,
//   );

//   var emp3 = Contractor(
//     id: '4444',
//     name: 'kemo',
//     baseSalary: 2500.0,
//     projectRate: 3.0,
//   );
//   emp1.displayInfo();
//   emp2.displayInfo();
//   emp3.displayInfo();
// }
// Program 4: Animal Inheritance

abstract class Animal {
  String name;
  String species;
  Animal({required this.name, required this.species});

  makeSound();
}
class Dog extends Animal {
  String breed;
  Dog({required super.name, required super.species, required this.breed});

  @override
   makeSound() {
    print('$name (Dog - $breed):Wo!');
  }
}

class Cat extends Animal {
  String color;
  Cat({required super.name, required super.species, required this.color});

  @override
   makeSound() {
    print('$name (Cat - $color): Meow!');
  }
}

class Bird extends Animal {
  bool canFly;
  String type;
  Bird({required super.name, required super.species, required this.type, required this.canFly});

  @override
  makeSound() {
    print('$name (Bird - $type): Chirp!');
  }
}

// void main() {
//   print('Animal Sounds');

//   dynamic dog = Dog(name: 'koko', species: 'Dog',breed: 'german');
//   var cat = Cat(name: 'koky', species: 'Cat',color: 'white');
//   var bird = Bird(name: 'koka', species: 'Bird', type: 'Canary', canFly: true);

//   List<Animal> animals = [dog, cat, bird];
//   for (var a in animals) {
//     a.makeSound();
//   }
// }
// Program 5: Electronic Device Inheritance.

class ElectronicDevice {
  String brand;
  String model;
  double powerConsumption;
  ElectronicDevice({required this.brand, required this.model, required this.powerConsumption});
}

class Smartphone extends ElectronicDevice {
  double screenSize;
  int batteryCapacity;
  Smartphone({
    required super.brand,
    required super.model,
    required super.powerConsumption,
    required this.screenSize,
    required this.batteryCapacity,
  });

  void displayBasicInfo() {
    print('Device: Smartphone - Brand: $brand, Model: $model');
  }

  void displayBatteryInfo() {
    print('Screen: ${screenSize} inches, Battery: ${batteryCapacity} mAh');
  }
}

class Laptop extends ElectronicDevice {
  String processorType;
  int ramSize;
  Laptop({
    required super.brand,
    required super.model,
    required super.powerConsumption,
    required this.processorType,
    required this.ramSize,
  });

   displayBasicInfo() {
    print('Device: Laptop - Brand: $brand, Model: $model');
  }

  displaySpecifications() {
    print('Processor: $processorType, RAM: ${ramSize} GB');
  }
}

class Tablet extends ElectronicDevice {
  bool hasCellular;
  bool penSupport;
  Tablet({
    required super.brand,
    required super.model,
    required super.powerConsumption,
    required this.hasCellular,
    required this.penSupport,
  });

  displayBasicInfo() {
    print('Device: Tablet - Brand: $brand, Model: $model');
  }

   displayFeatures() {
    print('Cellular: ${hasCellular ? 'Yes' : 'No'}, Pen Support: ${penSupport ? 'Yes' : 'No'}');
  }
}

// main() {
//   print('Electronic Devices');

//   var phone = Smartphone(
//     brand: 'Samsung',
//     model: 'S23',
//     powerConsumption: 15.0,
//     screenSize: 6.1,
//     batteryCapacity: 3900,
//   );

//   var laptop = Laptop(
//     brand: 'Dell',
//     model: 'XPS 13',
//     powerConsumption: 65.0,
//     processorType: 'Intel i7',
//     ramSize: 16,
//   );

//   dynamic tablet = Tablet(
//     brand: 'Apple',
//     model: 'iPad Pro',
//     powerConsumption: 20.0,
//     hasCellular: true,
//     penSupport: true,
//   );
//   phone.displayBasicInfo();
//   phone.displayBatteryInfo();
//   laptop.displayBasicInfo();
//   laptop.displaySpecifications();
//   tablet.displayBasicInfo();
//   tablet.displayFeatures();
// }




