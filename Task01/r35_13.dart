import 'dart:io';

void main() {
  displayDoctors();
  print('enter id to search');
  String id = stdin.readLineSync()!;
}

class Doctor {
  final String id;
  final String name;
  final double salary;

  Doctor({required this.id, required this.name, required this.salary});

  void displayInfo() {
    print('ID: $id | Name: Dr. $name | Salary: $salary');
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'id': id, 'salary': salary};
  }
}

void displayDoctors() {
  String name, id;
  double salary;
  List<Doctor> listOfDoctor = [];
  for (int i = 0; i < 5; i++) {
    id = 'D00$i';
    print('Please enter doctor name');
    name = stdin.readLineSync()!;
    print('Please enter doctor salary');
    salary = double.parse(stdin.readLineSync()!);
    listOfDoctor.add(Doctor(id: id, name: name, salary: salary));
  }
  print('\n');
  print(' === Doctor Information === ');
  print('\n');

  double ave = 0, total = 0, max = 0;
  for (Doctor doctor in listOfDoctor) {
    doctor.displayInfo();
    total += doctor.salary;
    ave = total / listOfDoctor.length;
    if (max < doctor.salary) {
      max = doctor.salary;
    }
  }
  print('\n');
  print(' === Salary Statistics === ');
  print('\n');
  print('Total Salaries: \$$total');
  print('Average Salary: \$$ave');
  print('Highest Salary: \$$max');
  print('\n');

  void searchDoctorId() {
    print('enter id to search');
    String id = stdin.readLineSync()!;
    for (Doctor doctor in listOfDoctor) {
      if (id == doctor.id) {
        doctor.displayInfo();
      }
    }
  }

  searchDoctorId();
}
