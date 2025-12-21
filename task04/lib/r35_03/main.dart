import 'package:flutter/material.dart';

class App_03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}

fishedtask() {
  print("DONE (:");
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INSTANT "),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.home),
        actions: [IconButton(onPressed: fishedtask, icon: Icon(Icons.search))],
      ),
      body: Text("r35_03:Mohamed Elgohary"),
    );
  }
}

void main() {
  runApp(App_03());
}
