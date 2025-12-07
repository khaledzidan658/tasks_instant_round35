# Task 2: Inheritance Practice Programs

Create 5 different Dart programs demonstrating inheritance concepts. Each program should implement a class hierarchy with a base class and at least two derived classes.

## Program 1: Vehicle Inheritance System

### Description:
Create a class hierarchy for different types of vehicles. The base class should contain common properties like brand and year, while derived classes should add specific features for each vehicle type.

### Requirements:
- **Base Class**: `Vehicle` with properties: `brand`, `year`
- **Derived Classes**: `Car`, `Motorcycle`, `Truck`
- **Car**: Add `doors` property
- **Motorcycle**: Add `hasSidecar` property  
- **Truck**: Add `cargoCapacity` property
- Each class should have a method to display its information
- Demonstrate method overriding in derived classes

### Expected Output:
```
=== Vehicle Information ===
Brand: Toyota, Year: 2022
Type: Car, Doors: 4
---
Brand: Honda, Year: 2021
Type: Motorcycle, Has Sidecar: false
---
Brand: Volvo, Year: 2020
Type: Truck, Cargo Capacity: 15.5 tons
```

## Program 2: Shape Inheritance System

### Description:
Create a geometric shape hierarchy where each shape can calculate its area. The base class should define the structure, while derived classes implement specific area calculations.

### Requirements:
- **Base Class**: `Shape` with properties: `name`
- **Derived Classes**: `Circle`, `Rectangle`, `Triangle`
- **Circle**: Add `radius` property, calculate area using πr²
- **Rectangle**: Add `length` and `width` properties, calculate area using l×w
- **Triangle**: Add `base` and `height` properties, calculate area using ½×b×h
- Each derived class must override the `calculateArea()` method
- Create a list of different shapes and display their areas

### Expected Output:
```
=== Shape Areas ===
Circle - Radius: 5.0 - Area: 78.54
Rectangle - Length: 4.0, Width: 6.0 - Area: 24.00
Triangle - Base: 3.0, Height: 4.0 - Area: 6.00
```

## Program 3: Employee Inheritance System

### Description:
Create an employee management system with different types of employees, each having different salary calculation methods.

### Requirements:
- **Base Class**: `Employee` with properties: `id`, `name`, `baseSalary`
- **Derived Classes**: `FullTimeEmployee`, `PartTimeEmployee`, `Contractor`
- **FullTimeEmployee**: Add `bonus` property, calculate salary as baseSalary + bonus
- **PartTimeEmployee**: Add `hoursWorked` and `hourlyRate` properties, calculate salary as hoursWorked × hourlyRate
- **Contractor**: Add `projectRate` property, calculate salary as baseSalary × projectRate
- Each class should override the `calculateSalary()` method
- Display all employees with their calculated salaries

### Expected Output:
```
=== Employee Salaries ===
ID: E001 - Name: Ahmed - Type: Full Time - Salary: 5500.00
ID: E002 - Name: Sarah - Type: Part Time - Salary: 2400.00
ID: E003 - Name: Mohammed - Type: Contractor - Salary: 7500.00
```

## Program 4: Animal Inheritance System

### Description:
Create an animal classification system where different animals can make different sounds and have different characteristics.

### Requirements:
- **Base Class**: `Animal` with properties: `name`, `species`
- **Derived Classes**: `Dog`, `Cat`, `Bird`
- **Dog**: Add `breed` property and `makeSound()` method that prints "Woof!"
- **Cat**: Add `color` property and `makeSound()` method that prints "Meow!"
- **Bird**: Add `canFly` property and `makeSound()` method that prints "Chirp!"
- Each derived class must override the `makeSound()` method
- Create a list of animals and make each one produce its sound

### Expected Output:
```
=== Animal Sounds ===
Buddy (Dog - Labrador): Woof!
Whiskers (Cat - Orange): Meow!
Tweety (Bird - Canary): Chirp!
```

## Program 5: Electronic Device Inheritance System

### Description:
Create a system to manage different types of electronic devices with varying power consumption and functionalities.

### Requirements:
- **Base Class**: `ElectronicDevice` with properties: `brand`, `model`, `powerConsumption`
- **Derived Classes**: `Smartphone`, `Laptop`, `Tablet`
- **Smartphone**: Add `screenSize` and `batteryCapacity` properties, method to display battery info
- **Laptop**: Add `processorType` and `ramSize` properties, method to display specifications
- **Tablet**: Add `hasCellular` and `penSupport` properties, method to display features
- Each class should have a unique method specific to its type
- Demonstrate calling both inherited and unique methods

### Expected Output:
```
=== Electronic Devices ===
Device: Smartphone - Brand: Samsung, Model: S23
Screen: 6.1 inches, Battery: 3900 mAh
---
Device: Laptop - Brand: Dell, Model: XPS 13
Processor: Intel i7, RAM: 16 GB
---
Device: Tablet - Brand: Apple, Model: iPad Pro
Cellular: Yes, Pen Support: Yes
```

## Learning Objectives for All Programs:

1. Understand how to create class hierarchies
2. Practice using the `extends` keyword
3. Learn to override methods in derived classes
4. Understand how to use `super` to call parent class methods
5. Practice creating and using objects from inherited classes
6. Learn to organize related classes in inheritance hierarchies

## Common Features to Implement in Each Program:

- Constructor initialization using `super`
- Method overriding with `@override` annotation
- Creation of lists containing objects of different derived types
- Demonstration of polymorphism through method calls
- Proper display of inherited and unique properties

Each program should be complete and runnable, demonstrating clear inheritance relationships and practical use cases for object-oriented programming in Dart.