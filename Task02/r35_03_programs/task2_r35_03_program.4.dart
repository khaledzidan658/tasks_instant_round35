class ElectronicDevice {
  final String brand;
  final String model;
  final double PowerConsumption;
  ElectronicDevice({
    required this.brand,
    required this.model,
    required this.PowerConsumption,
  });
  void displayInfo() {
    print(
      'Brand: $brand, Model: $model, Power Consumption: $PowerConsumption W',
    );
  }
}

class Smartphone extends ElectronicDevice {
  final double screenSize;
  final int batteryCapacity;
  Smartphone({
    required super.brand,
    required super.model,
    required super.PowerConsumption,
    required this.screenSize,
    required this.batteryCapacity,
  });
  @override
  void displayInfo() {
    print(
      'Device: Smartphone - brand: $brand, Model: $model\n screen: $screenSize inches',
    );
    print("battery info:\n batteryCapacity = $batteryCapacity mAh ");
    print("___________________");
  }
}

class Laptop extends ElectronicDevice {
  final String processorType;
  final int ramSize;
  Laptop({
    required super.brand,
    required super.model,
    required super.PowerConsumption,
    required this.processorType,
    required this.ramSize,
  });
  @override
  void displayInfo() {
    print('Device: Laptop - Brand: $brand, Model: $model');
    print("laptop info: Processor = $processorType, RAM = $ramSize GB");
    print("___________________");
  }
}

class Tablet extends ElectronicDevice {
  final bool hasCellular;
  final bool penSupport;

  Tablet({
    required super.brand,
    required super.model,
    required super.PowerConsumption,
    required this.hasCellular,
    required this.penSupport,
  });
  @override
  void displayInfo() {
    print('Device: Tablet - Brand: $brand, Model: $model');
    print("tablet info: hasCellular = $hasCellular, penSupport = $penSupport");
    print("___________________");
  }
}

void main() {
  Smartphone phone = Smartphone(
    brand: 'Apple',
    model: 'iPhone 13',
    PowerConsumption: 5.0,
    screenSize: 6.1,
    batteryCapacity: 3095,
  );
  phone.displayInfo();

  Laptop laptop = Laptop(
    brand: 'Dell',
    model: 'XPS 13',
    PowerConsumption: 45.0,
    processorType: 'Intel i7',
    ramSize: 16,
  );
  laptop.displayInfo();

  Tablet tablet = Tablet(
    brand: 'Samsung',
    model: 'Galaxy Tab S7',
    PowerConsumption: 15.0,
    hasCellular: true,
    penSupport: true,
  );
  tablet.displayInfo();
}
