import 'package:flutter/material.dart';
import 'package:task5_r35_13/appBar.dart';

class Calculatepage extends StatelessWidget {
  const Calculatepage({super.key, required this.bmi});
  final double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0e21),
      appBar: bar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                decoration: BoxDecoration(
                  color: Color(0xff121327),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmi < 18.5
                          ? 'Underweight'
                          : bmi < 25
                          ? 'NORMAL'
                          : bmi < 30
                          ? 'Overweight'
                          : 'Obese',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                        textAlign: TextAlign.center,
                        bmi < 18.5
                            ? 'You are underweight. Try to eat more nutritious food!'
                            : bmi < 25
                            ? 'You have a normal body weight Good job !'
                            : bmi < 30
                            ? 'You are underweight. Try to eat more nutritious food!'
                            : 'You are underweight. Try to eat more nutritious food!',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(color: Color(0xffd93558)),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
