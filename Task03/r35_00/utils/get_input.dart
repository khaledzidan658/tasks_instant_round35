import 'dart:io';

String getInput(String text){
  stdout.write(text);
  return stdin.readLineSync()!;
}