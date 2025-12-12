
import '../entites/doctor.dart';
import '../entites/nurse.dart';
import '../entites/patient.dart';

class Data{

  static List<Doctor> doctors = [
    Doctor(id: 0, name: 'Dr. Smith', patients: [patients[0] , patients[1]]),
    Doctor(id: 1, name: 'Dr. Jones', patients: [patients[2] , patients[3] , patients[4]]),
  ];
  


   static List<Nurse> nurses = 
    [
    Nurse(id: 0, name: 'Nurse Nancy', patients: [patients[5]], doctor: doctors[0]),
    Nurse(id: 1, name: 'Nurse Nick', patients: [], doctor: doctors[1]),
  ];
   

   static List<Patient> patients = [
    Patient(id: 0, name: 'Alice', age: 30, disease: ['Flu']),
    Patient(id: 1, name: 'Bob', age: 45, disease: ['Cough','Flu']),
    Patient(id: 2, name: 'Charlie', age: 22, disease: ['Fever']),
    Patient(id: 3, name: 'David', age: 50, disease: ['Cold']),
    Patient(id: 4, name: 'Eve', age: 28, disease: ['Headache']),
    Patient(id: 5, name: 'Frank', age: 60, disease: ['Diabetes']),
  ];
}