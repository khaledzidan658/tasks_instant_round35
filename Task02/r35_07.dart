import 'dart:math';
//Vehicle 

class Vehicle{
    String brand;
    int year;
Vehicle(this.brand,this.year);

void displayInfo(){
    print("Brand: $brand, Year: $year");
}
}
class Car extends Vehicle{
    int doors;
    Car(String brand, int year, this.doors) : super(brand, year);
@override
void displayInfo(){
    super.displayInfo();
    print("Type: Car, Doors: $doors");
}
}
class Motorcycle extends Vehicle{
    bool hasSideCar;
    Motorcycle(String brand, int year, this.hasSideCar) :super(brand,year);

    @override
 void displayInfo(){
    super.displayInfo();
    print("Type: Motorcycle, Has Sidecar: $hasSideCar");

 }
}

class Truck extends Vehicle{
    double cargoCapacity;
    Truck(String brand, int year, this.cargoCapacity) :super(brand,year);
    @override
  void displayInfo(){
    super.displayInfo();
    print("Type: Truck, Cargo Capacity: $cargoCapacity tons");
}

}
void mainVehicle(){
    print("======== Vehicle Info ======");
    Car car = Car("Toyota", 2022,4);
    car.displayInfo();

    Motorcycle moto = Motorcycle("honda",2021,false);
    moto.displayInfo();

    Truck truck = Truck("volov",2020,15.5);
    truck.displayInfo();

}



//Shape

abstract class Shape{
String name;

Shape(this.name);
double calculateArea();
}

class Circle extends Shape{
    double radius;
    Circle(this.radius):super("Circle");

    @override
    double calculateArea() => pi*radius*radius;
}

class Rectangle extends Shape{
    double length , width;
    Rectangle(this.length,this.width): super("Rectangle");

    @override
    double calculateArea() => length*width;
}

class Triangle extends Shape{
    double base,height;

    Triangle(this.base,this.height): super("Triangle");

    @override
    double calculateArea() => 0.5*base*height;
}

void mainShapes(){
    print("============= Shape Areas =============");
    List<Shape> shapes = [Circle(5), Rectangle(4,6), Triangle(3,4)];

    for (var s in shapes){
        print ("${s.name} Area: ${s.calculateArea()}");
    }
}

//Employeee

abstract class Employee{
    String id , name;
    double baseSalary;

    Employee(this.id, this.name, this.baseSalary);

double calculateSalary();

}

class FullTimeEmployee extends Employee{
    double bonus;
    FullTimeEmployee(String id , String name , double baseSalary, this.bonus):super(id,name,baseSalary);


@override
double calculateSalary()=> baseSalary + bonus;

}

class PartTimeEmployee extends Employee{
    double hoursWorked , hourlyRate;

    PartTimeEmployee(String id,String name, this.hoursWorked,this.hourlyRate) :super(id,name,0);
@override
double calculateSalary() => hoursWorked * hourlyRate;

}

class Contractor extends Employee{
    double projectRate;

    Contractor(String id , String name, double baseSalary, this.projectRate) :super(id,name,baseSalary);

    @override
double calculateSalary() => baseSalary* projectRate;
}

void mainEmployees(){
    print("========== Employee Salaries===========");

    List<Employee> list=[
        FullTimeEmployee("E001","Ahmed",5000,500),
        PartTimeEmployee("E002", "Sarah", 120, 20),
        Contractor("E003", "Mohammed", 2500, 3),
    ];

    for(var e in list){
        print("ID: ${e.id }  Name: ${e.name}  Salary: ${e.calculateSalary()}");
    }
}



//Animal inhertiance

class Animal{
    String name;
    String species;

    Animal(this.name,this.species);

    void makeSound(){}
}

class Dog extends Animal {
    String breed;

    Dog(String name,this.breed):super(name,"Dog");

    @override
 void makeSound() => print("$name(Dog  $breed): wooof");

}

class Cat extends Animal {
    String color;
    Cat(String name, this.color) :super(name,"Cat");

    @override
    makeSound()=> print("$name (Cat $color): Meow");
}

class Bird extends Animal{
    String type;
    bool canFly;

    Bird(String name, this.type, this.canFly): super(name,"Bird");

    @override
    makeSound()=> print("$name (Bird $type): tweet" );

}

void mainAnimals(){
    print("========== Animal Sounds ==========");
    List <Animal> animals= [
        Dog("buddy", "Lab"),
        Cat("NIA" , "Black"),
        Bird("tweety", "Canary", true)
    ];

    for(var a in animals){
        a.makeSound();
    }
}

//Electronic device
class ElectronicDevice{
String brand,model;
double powerConsumption;

ElectronicDevice(this.brand,this.model,this.powerConsumption);

void showDevice(){
    print("Device: $brand $model");
}
}

class Smartphone extends ElectronicDevice{
double screenSize;
int batteryCapacity;

Smartphone(String brand, String model, double powerConsumption, this.screenSize, this.batteryCapacity): super(brand, model,powerConsumption);

void showBatteryInfo(){
    print("Screen: ${screenSize} incehs, Battery: ${batteryCapacity}%");

}

}
class Laptop extends ElectronicDevice{
    String processorType;
    int ramSize;
    Laptop(String brand, String model, double powerConsumption, this.processorType, this.ramSize): super(brand, model,powerConsumption);

    void showSpecs(){
        print("Processor: $processorType, Ram: ${ramSize} GB");
    }
}

class Tablet extends ElectronicDevice{
    bool hasCellular;
    bool penSupport;
    Tablet(String brand, String model, double powerConsumption, this.hasCellular, this.penSupport): super(brand, model,powerConsumption);

    void showFeatures(){
        print("Cellular ${hasCellular ? "yes" : "No"} , Pen Support: ${penSupport ? "Yes" : "No"}");

    }
}

void mainDevices(){
    print("===== Electronic devices=====");

    Smartphone phone = Smartphone("Samsung", "s34", 15, 6.1,3900);
    phone.showDevice();
    phone.showBatteryInfo();
    print("==========");

    Laptop lap= Laptop("Dell", "x",45, "Intel i7",16);
    lap.showDevice();
    lap.showSpecs();
    print("=======");

    Tablet tab=Tablet("Apple", "Ipad pro",20,true,true);
    tab.showDevice();
    tab.showFeatures();
}

void main(){
    mainVehicle();
    mainShapes();
    mainEmployees();
    mainAnimals();
    mainDevices();
}