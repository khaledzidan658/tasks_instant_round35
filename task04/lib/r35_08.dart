import 'package:flutter/material.dart';
main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("instant"),
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: (){
            print("welcome");
          },icon: Icon(Icons.search),)
        ],
      ),

      body: Text("35_08"),


    );
  }
}


