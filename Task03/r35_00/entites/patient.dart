
class Patient {
  final int id;
  final String name;
  final int age;
  final List<String> disease;

  const Patient({
    required this.id,
    required this.name,
    required this.age,
    required this.disease,
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'Patient{id: $id, name: $name, age: $age, disease: $disease}';
  }
}
