import 'package:flutter/material.dart';
import 'secondpage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Firstpage());
  }
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111927),
      appBar: AppBar(
        backgroundColor: Color(0xff111927),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff1d1d31),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 100, color: Colors.white),
                          Text("Male", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff131328),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 100, color: Colors.white),
                          Text("Female", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff1d1d31),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      color: Color(0xff646478),
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "177.cm",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Slider(
                    value: 0,
                    min: 0,
                    max: 100,
                    onChanged: (value) {},
                    activeColor: Color(0xffd93559),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff1d1d31),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Color(0xff646478),
                            ),
                          ),
                          Text(
                            "70",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.remove,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff1d1d31),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Color(0xff646478),
                            ),
                          ),
                          Text(
                            "20",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.remove,
                                  color: Color(0xff4e4f5e),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                  "Calculate",
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
