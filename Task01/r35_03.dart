import 'dart:io';

class Doctor {
  final String name;
  final String id;
  final double salary;
  const Doctor({required this.name, required this.id, required this.salary});

  displayInfo() {
    print('ID: $id,Name: $name, Salary: \$$salary');
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'id': id, 'salary': salary};
  }
}

main() {
  List<Doctor> doctors = printDoctorInfo();

  Seartch(doctors);
}

printDoctorInfo() {
  List<Doctor> doctors = [];
  var max = 0.0;
  var sum = 0.0;
  double average;
  String name, id;
  double salary;
  for (int i = 1; i < 3; i++) {
    id = 'D00$i';

    print('Enter details for Doctor $i:');
    stdout.write(" Enter Name: ");
    name = stdin.readLineSync()!;

    stdout.write(" Enter Salary: ");
    salary = double.parse(stdin.readLineSync()!);

    doctors.add(Doctor(name: name, id: id, salary: salary));
  }

  print("\n");
  print("=== Doctor Information ===\n");
  for (var doctor in doctors) {
    sum += doctor.salary;
    if (doctor.salary > max) {
      max = doctor.salary;
    }

    doctor.displayInfo();
  }
  print("\n");
  average = sum / doctors.length;
  print("=== Salary Statistics ===\n");
  print("max salary is $max");
  print("total salary is $sum");
  print("average salary is $average");
  return doctors;
}

Seartch(List<Doctor> doctors) {
  // List<String> names = [];
  String search;
  print("what is the id of doctor you want to search:");
  search = stdin.readLineSync()!.toLowerCase();
  print("\n=== Search Results ===\n");
  for (var doctor in doctors) {
    if (doctor.name.toLowerCase().contains(search)) {
      doctor.displayInfo();
      break;
    } else {
      print("No doctor found matching '$search'");
    }
  }
}
