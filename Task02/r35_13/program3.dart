class Employee {
  final String id;
  final String name;
  final int baseSalary;
  final String type;

  Employee({
    required this.id,
    required this.name,
    required this.baseSalary,
    required this.type,
  });
  double calcSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee {
  final double bonus;

  FullTimeEmployee({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.bonus,
    required super.type,
  });
  @override
  double calcSalary() {
    return (bonus + baseSalary);
    super.calcSalary();
  }
}

class PartTimeEmployee extends Employee {
  final double hoursWorked;
  final double hourlyRate;

  PartTimeEmployee({
    required this.hoursWorked,
    required this.hourlyRate,
    required super.id,
    required super.name,
    required super.baseSalary,
    required super.type,
  });

  @override
  double calcSalary() {
    return hoursWorked * hourlyRate;
    super.calcSalary();
  }
}

class Contractor extends Employee {
  final double projectRate;

  Contractor({
    required super.id,
    required super.name,
    required super.baseSalary,
    required this.projectRate,
    required super.type,
  });

  @override
  double calcSalary() {
    return (projectRate * baseSalary);
    super.calcSalary();
  }
}

void main() {
  final fTe = FullTimeEmployee(
    id: '1',
    name: 'Kerolos',
    baseSalary: 5000,
    bonus: 1000,
    type: 'Full Time',
  );
  final pte = PartTimeEmployee(
    hoursWorked: 6.5,
    hourlyRate: 30,
    id: '2',
    name: 'Demian',
    baseSalary: 4000,
    type: 'Part Time',
  );
  final con = Contractor(
    id: '3',
    name: 'Kad',
    baseSalary: 3000,
    projectRate: 5.5,
    type: 'Contractor',
  );

  print(
    'ID : ${fTe.id} - NAME : ${fTe.name} - TYPE : ${fTe.type} - SALARY : ${fTe.calcSalary()}',
  );
  print(
    'ID : ${pte.id} - NAME : ${pte.name} - TYPE : ${pte.type} - SALARY : ${pte.calcSalary()}',
  );
  print(
    'ID : ${con.id} - NAME : ${con.name} - TYPE : ${con.type} - SALARY : ${con.calcSalary()}',
  );
}
