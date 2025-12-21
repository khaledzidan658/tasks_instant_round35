import 'package:flutter/material.dart';
import 'package:task5_r35_13/calculateScreen/calculatePage.dart';
import 'package:task5_r35_13/welcome/welcome.dart';

void main() {
  runApp(const BmiCalaculator());
}

class BmiCalaculator extends StatelessWidget {
  const BmiCalaculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Welcome());
  }
}
