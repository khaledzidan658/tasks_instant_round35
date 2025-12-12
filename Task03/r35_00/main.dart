import 'entites/patient.dart';
import 'screens/start_screen.dart';
import 'utils/get_patient.dart';

//run
void main() {
  Patient patient = getPatient();
  StartScreen startScreen = StartScreen(patient: patient);
  while(true){
  startScreen.viewOptions();
  }
}

