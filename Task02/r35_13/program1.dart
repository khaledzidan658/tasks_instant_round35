abstract class Verhicle {
  final String brand;
  final int year;

  Verhicle({required this.brand, required this.year});
  void dis() {
    print('brand => $brand , year => $year ');
  }
}

class Car extends Verhicle {
  final int doors;
  Car({required super.brand, required super.year, required this.doors});
  @override
  void dis() {
    print('brand => $brand , year => $year , doors => $doors');
  }
}

class Motorcycle extends Verhicle {
  final bool hasSidecar;
  Motorcycle({
    required super.brand,
    required super.year,
    required this.hasSidecar,
  });
  @override
  void dis() {
    print('brand => $brand , year => $year , doors => $hasSidecar');
  }
}

class Truck extends Verhicle {
  final double cargoCapacity;
  Truck({
    required super.brand,
    required super.year,
    required this.cargoCapacity,
  });
  @override
  void dis() {
    print('brand => $brand , year => $year , doors => $cargoCapacity');
  }
}

void main() {
  final car = Car(brand: 'A', year: 2025, doors: 4);
  final motor = Motorcycle(brand: 'B', year: 2024, hasSidecar: true);
  final truck = Truck(brand: 'C', year: 2023, cargoCapacity: 90.5);
  car.dis();
  motor.dis();
  truck.dis();
}
