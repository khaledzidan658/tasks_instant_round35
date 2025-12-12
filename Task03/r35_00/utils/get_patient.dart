
import '../data/data.dart';
import '../entites/patient.dart';
import 'get_input.dart';

Patient getPatient(){
  String name = getInput('Enter patient name: ');
  int age = int.parse(getInput('Enter patient age: '));
  List<String> diseases = [];
  do {
    diseases.add(getInput('Please enter your disease:'));
  } while (getInput('Do you have another disease ? (y/n): ').toLowerCase().contains('y'));
  Patient patient = Patient(id: Data.patients.length, name: name, age: age, disease: diseases);
  Data.patients.add(patient);
  return patient;
}
