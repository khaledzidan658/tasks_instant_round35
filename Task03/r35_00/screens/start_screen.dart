import '../entites/patient.dart';
import '../utils/get_input.dart';
import 'view_screen.dart';

class StartScreen {
  final Patient patient;
  const StartScreen({required this.patient});

  void viewOptions() {
    print('============================');
    print('Welcome to hospital System');
    print('============================');
    print('1)assign with doctor');
    print('2)assign with nurse');
    print('3)view doctors and nurse');
    print('4)view patients');
    print('5)exit');

    int input = int.parse(getInput('Enter your option: '));

    if (input == 1) {
      // assignWithDoctor(patient);
    } else if (input == 2) {
      // assignWithNurse(patient);
    } else if (input == 3) {
      ViewScreen(option: true).viewTheOption();
    } else if (input == 4) {
      ViewScreen(option: false).viewTheOption();
    } else if (input == 5) {
      print('Exiting program. Goodbye!');
      return;
    } else {
      print('Invalid option, please try again.');
    }
    return;
  }
}
