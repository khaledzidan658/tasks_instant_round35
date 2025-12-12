import 'dart:io';

void main() {
  print5doctors();
}

void print5doctors() {
  List<Doctor> doctors = [];
  for (var i = 1; i < 6; i++) {
    String id, name;
    double salary;
    id = 'D00$i';
    print('Enter docotr name');
    name = stdin.readLineSync()!;
    print('Enter docotr salary');
    salary = double.parse(stdin.readLineSync()!);

    doctors.add(Doctor(id: id, name: name, salary: salary));
  }
  print('\n');
  print('=== Doctor Information ===');
  double sum = 0, max = 0, avg;
  String maxName = '';

  for (Doctor doctor in doctors) {
    doctor.displayInfo();

    if (max < doctor.salary) {
      max = doctor.salary;
      maxName = doctor.name;
    }

    sum += doctor.salary;
  }

  avg = sum / doctors.length;

  print('\n');

  print('=== Salary Statistics ===');

  print('Total Salaries: \$$sum');
  print('Average Salary: \$$avg');
  print('Highest Salary: \$$max (Dr. $maxName)');
}

class Doctor {
  final String id;
  final String name;
  final double salary;

  const Doctor({required this.id, required this.name, required this.salary});

  void displayInfo() {
    print("ID: $id | Name: DR. $name | Salary: \$$salary");
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'salary': salary};
  }
}
