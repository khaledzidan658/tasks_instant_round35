import 'package:flutter/material.dart';
import 'package:task5_r35_13/welcome/welcome.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: genderContainer(
              genderIcon: Icon(Icons.male, size: 70, color: Colors.white),
              genderText: Text('Male', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Expanded(
            child: genderContainer(
              genderIcon: Icon(Icons.female, size: 70, color: Colors.white),
              genderText: Text('Female', style: TextStyle(color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}

class genderContainer extends StatelessWidget {
  const genderContainer({
    super.key,
    required this.genderText,
    required this.genderIcon,
  });
  final Text genderText;
  final Icon genderIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [genderIcon, genderText],
      ),
      decoration: BoxDecoration(
        color: Color(0xff121327),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
