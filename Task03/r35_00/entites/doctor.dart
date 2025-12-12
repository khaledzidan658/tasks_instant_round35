import 'patient.dart';

class Doctor {
  final int id;
  final String name;
  final List<Patient> patients;

  const Doctor({required this.id, required this.name, required this.patients});

@override
  String toString() {
    return '{id: $id, name: $name, patients: $patients}';
  }

}
