class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print('Vehicle Brand: $brand, Year: $year');
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void displayInfo() {
    print('Car Brand: $brand, Year: $year, Doors: $doors');
  }
}

class Motorcycle extends Vehicle {
  bool hasSidecar;

  Motorcycle(String brand, int year, this.hasSidecar) : super(brand, year);

  @override
  void displayInfo() {
    print('Motorcycle Brand: $brand, Year: $year, Has Sidecar: $hasSidecar');
  }
}

class Truck extends Vehicle {
  double cargoCapacity;

  Truck(String brand, int year, this.cargoCapacity) : super(brand, year);

  @override
  void displayInfo() {
    print(
      'Truck Brand: $brand, Year: $year, Cargo Capacity: $cargoCapacity tons',
    );
  }
}

void main() {
  Car car = Car('Toyota', 2020, 4);
  Motorcycle motorcycle = Motorcycle('Harley-Davidson', 2019, true);
  Truck truck = Truck('Ford', 2018, 15.5);

  car.displayInfo();
  motorcycle.displayInfo();
  truck.displayInfo();
}
