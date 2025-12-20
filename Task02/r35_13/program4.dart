class Animals {
  final String name;
  final String species;
  final String type;

  Animals({required this.name, required this.species, required this.type});
  String makeSound() {
    return '';
  }
}

class Dog extends Animals {
  final bool breed;

  Dog({
    required super.name,
    required super.species,
    required this.breed,
    required super.type,
  });

  @override
  String makeSound() {
    return ('Woof!');
    super.makeSound();
  }
}

class Cat extends Animals {
  final String color;

  Cat({
    required this.color,
    required super.name,
    required super.species,
    required super.type,
  });
  @override
  String makeSound() {
    return ('Meow!');
    super.makeSound();
  }
}

class Bird extends Animals {
  final bool canFly;

  Bird({
    required super.name,
    required super.species,
    required this.canFly,
    required super.type,
  });
  @override
  String makeSound() {
    return ('Chirp!');
    super.makeSound();
  }
}

void main() {
  final d = Dog(name: 'Buddy', species: 'Labrador', breed: true, type: 'Dog');
  final c = Cat(color: 'Orange', name: 'Whiskers', species: 'Cat', type: 'Cat');
  final b = Bird(name: 'Tweety', species: 'Canary', canFly: true, type: 'Bird');
  print('${d.name} (${d.type} - ${d.species}): ${d.makeSound()}');
  print('${c.name} (${c.type} - ${c.color}): ${c.makeSound()}');
  print('${b.name} (${b.type} - ${b.species}): ${b.makeSound()}');
}
