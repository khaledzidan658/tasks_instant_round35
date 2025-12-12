import '../data/data.dart';

class ViewScreen {
  final bool option;
  const ViewScreen({required this.option });

  void viewTheOption(){
    if(option){
      //print the docotrs and nurses from data
      print('Viewing Doctors and Nurses:');
      for (var doctor in Data.doctors) {
        print('Doctor: $doctor');
      }
      for (var nurse in Data.nurses) {
        print('Nurse: $nurse');
      }
    }else{
      print('Viewing Patients:');
      for (var patient in Data.patients) {
        print('Patient: $patient');
      }
    }

    // StartScreen(patient: patient).viewOptions;
  }
  
}