    
import 'dart:math';

 class Vehicle{
   String brand;
   int year ;
   Vehicle({required this.brand,required this.year});
   void displayinfo(){
     print("Brand : $brand , Year : $year");
   }
 }
 // class car
 
 class car extends Vehicle{
   int doors;
   car({ required this.doors ,
    required String brand,
     required int year})
          : super(brand: brand, year: year);

  @override
   void displayinfo(){
     print(' brand : $brand , year : $year , \n  Type : Car ,  doors : $doors');
   }
 }

 class Motorcycle extends Vehicle{
  bool hasSidecar;

  Motorcycle({ required this.hasSidecar,
  required String brand,
   required int year})
   :super(brand: brand, year: year);

  @override
   void displayinfo(){
     print('  brand : $brand ,  year : $year ,\n Type : Mptorcycle , has Sidecar : $hasSidecar    ');
   }
 }

  class Truck extends Vehicle{
  int cargoCapacity;
   Truck({ required this.cargoCapacity ,
   required String brand
   , required int year})
   :super(brand: brand, year: year);

     @override
     void displayinfo(){
     print('  brand : $brand , year : $year , \n Type : Truck , cargoCapacity : $cargoCapacity kg ,  ');
   }
  }
 void main(){
    print('=== Vehicle Information ==='); 
   car car1= car(doors: 4, brand: 'bmw', year: 2005);
      car1.displayinfo();
    print('---');
  Motorcycle moto1 =Motorcycle(hasSidecar: false, brand: 'Hounda', year: 2012);
   moto1.displayinfo();

  Truck truk1=Truck(cargoCapacity: 1000, brand: 'Mercedes ', year: 2020);
 truk1.displayinfo();
    print('---');

  }
 
//----------TASK2------------
 

class Shape {
  String name;
  Shape({required this.name}) ;
  void calculateArea(){
  }
}
 class Circle extends Shape{
  double radius;
  Circle({required String name ,
  required this.radius })
   :super(name: name) ;

  @override
  void calculateArea(){
    print(' $name - Radius : $radius - Area :${pi*radius*radius }');
  }
 }
 class Rectangle extends Shape{
  double length;
  double width ;
  Rectangle({required String name ,
  required this.length ,
   required this.width}) 
  :super(name: name);

  @override
  void calculateArea(){
     print('$name - length : $length, width:$width - Area :${length*width }');
  }
 }
 class Triangle extends Shape{
  double base;
  double height;
  Triangle({required String name , required this.base , required this.height}):super(name: name);
   
   @override
  void calculateArea(){
   print(" $name - Base:$base , height: $height -Area :${base *height*1/2}  ");
   }
 }

//  void main(){
//    print("=== Shape Areas ===");
//    Circle c1=Circle(name: "Circle", radius: 4.0);
//    c1.calculateArea();
//    Rectangle rec1=Rectangle(name:'Rectangle', length: 3.5, width: 4);
//   rec1.calculateArea();
//   Triangle tri1=Triangle(name: 'Triangle', base: 3, height: 4);
//   tri1.calculateArea();
//  }