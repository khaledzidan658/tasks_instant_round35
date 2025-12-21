class ElectronicDevice {
  final String brand;
  final String powerConsumption;
  final String model;
  final String type;
  ElectronicDevice({
    required this.brand,
    required this.powerConsumption,
    required this.model,
    required this.type,
  });
}

class SmartPhone extends ElectronicDevice {
  final double ScreenSize;
  final String batteryCapacity;

  SmartPhone({
    required super.brand,
    required super.powerConsumption,
    required super.model,
    required this.ScreenSize,
    required this.batteryCapacity,
    required super.type,
  });
  String battary() {
    return batteryCapacity;
  }
}

class Laptop extends ElectronicDevice {
  final String processorType;
  final String ramSize;

  Laptop({
    required super.brand,
    required super.powerConsumption,
    required super.model,
    required this.processorType,
    required this.ramSize,
    required super.type,
  });
  Map<String, dynamic> get specifications {
    return {'Processor Type': processorType, 'RAM Size': ramSize};
  }
}

class Tablet extends ElectronicDevice {
  final bool hasCellular;
  final bool penSupport;

  Tablet({
    required super.brand,
    required super.powerConsumption,
    required super.model,
    required this.hasCellular,
    required this.penSupport,
    required super.type,
  });

  Map<String, bool> get features {
    return {'hasCellular': hasCellular, 'penSupport': penSupport};
  }
}

void main() {
  final s = SmartPhone(
    brand: 'Samsung',
    powerConsumption: '90%',
    model: 'S23',
    ScreenSize: 6.1,
    batteryCapacity: '3900 mAh',
    type: 'SmartPhone',
  );
  final l = Laptop(
    brand: "Dell",
    powerConsumption: '90%',
    model: 'XPS 13',
    processorType: 'Intel i7',
    ramSize: '16 GB',
    type: 'Laptop',
  );

  final t = Tablet(
    brand: 'Apple',
    powerConsumption: '90%',
    model: 'iPad Pro',
    hasCellular: true,
    penSupport: true,
    type: 'Tablet',
  );
  print('=== ElectronicDevice ===');
  print('''Device : ${s.type}, - brand  : ${s.brand}, Model : ${s.model}
Screen : ${s.ScreenSize}, Battary: ${s.batteryCapacity}
  ''');
  print('''Device : ${l.type}, - brand  : ${l.brand}, Model : ${l.model}
Processor : ${l.specifications['Processor Type']}, Ram Size: ${l.specifications['RAM Size']}
  ''');
  print('''Device : ${t.type}, - brand  : ${t.brand}, Model : ${t.model}
Cellular : ${t.features['hasCellular']}, Pen Support: ${t.features['penSupport']}
  ''');
}
