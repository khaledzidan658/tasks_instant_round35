import 'package:flutter/material.dart';
import 'package:task5_r35_13/appBar.dart';
import 'package:task5_r35_13/welcome/container1.dart';
import 'package:task5_r35_13/welcome/container2.dart';
import 'package:task5_r35_13/welcome/container3.dart';
import 'package:task5_r35_13/welcome/container4.dart';

class Welcome extends StatefulWidget {
  Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  double height = 170;

  double weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0e21),
      appBar: bar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container1(),
            Container2(
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
            Container3(
              onChangedWeight: (val) {
                setState(() {
                  weight = val;
                });
              },
            ),
            Container4(weight: weight, height: height),
          ],
        ),
      ),
    );
  }
}
