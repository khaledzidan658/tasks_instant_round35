import 'package:flutter/material.dart';
import 'package:task5_r35_13/calculateScreen/calculatePage.dart';

class Container4 extends StatefulWidget {
  Container4({super.key, required this.weight, required this.height});
  final double weight;
  final double height;

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  double calcBmi() {
    return widget.weight / ((widget.height / 100) * (widget.height / 100));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffd93558)),
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          double bmi = calcBmi();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Calculatepage(bmi: bmi);
              },
            ),
          );
        },
        child: Text('Calculate', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
