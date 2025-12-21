import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0e20),
      appBar: AppBar(
        backgroundColor: Color(0xff0b0e20),
        title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff0b0e20),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Your Result",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1d1d31),
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "NORMAL",
                    style: TextStyle(color: Colors.green, fontSize: 40),
                  ),
                  Text(
                    "22.3",
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                  Text(
                    "You have a normal body weight.\n"
                    "                  Good job!",
                    style: TextStyle(
                      color: Color(0xff646478),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              color: Color(0xffd93559),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
