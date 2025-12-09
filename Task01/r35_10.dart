import 'dart:io';


void main() {
    Doctor doctor = Doctor(id: 'D001', name: 'khaled', salary: 5000);
  doctor.displayInfo();
  print5doctors();
}

void print5doctors() {
  List<Doctor> doctors = [];
  print('=== Doctor Information ===');
  for (var i = 0; i < 5; i++) {
    String id, name;
    double salary;
    id = 'D00$i';
    print("enter doctor name");
    name = stdin.readLineSync()!;
    print("enter doctor salary");
    salary = double.parse(stdin.readLineSync()!);
    doctors.add(Doctor(id: id, name: name, salary: salary));
  }
  for (Doctor doctor in doctors) {
    doctor.displayInfo();
  }

  print('=== Salary Stayistics ===');
}

class Doctor {
  final String id;
  final String name;
  final double salary;

  const Doctor({required this.id, required this.name, required this.salary});

  void displayInfo() {
    //ID: D001 |Name: Dr.Ahmed |Salary :$5000.00
    print("ID :$id |Name :$name :|Salary:$salary");
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'salary': salary};
  }
}
