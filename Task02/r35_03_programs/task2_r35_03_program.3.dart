class Employee {
  final int id;
  final String name;
  final double baseSalary;

  Employee({required this.id, required this.name, required this.baseSalary});

  double calculateSalary() {
    return baseSalary;
  }

  @override
  String toString() {
    return 'ID: $id, Name: $name, Salary: ${calculateSalary()}';
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  @override
  double calculateSalary() {
    print("FullTime Employees");
    return baseSalary + bonus;
  }

  FullTimeEmployee({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.bonus,
  });

  String toString();
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  @override
  double calculateSalary() {
    print("\nPartTime Employees");
    return hoursWorked * hourlyRate;
  }

  PartTimeEmployee({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.hoursWorked,
    required this.hourlyRate,
  });

  String toString();
}

class Contractor extends Employee {
  double projectRate;

  @override
  double calculateSalary() {
    print("\nContractor Employees");
    return baseSalary * projectRate;
  }

  Contractor({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.projectRate,
  });

  String toString();
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee(id: 1, name: "Ahmed", baseSalary: 5000, bonus: 500),
    PartTimeEmployee(
      id: 2,
      name: "Sarah",
      baseSalary: 0,
      hoursWorked: 120,
      hourlyRate: 20,
    ),
    Contractor(id: 3, name: "Mohammed", baseSalary: 5000, projectRate: 1.5),
  ];

  print("=== Employee Salaries ===");
  for (var employee in employees) {
    print(employee.toString());
  }
}
