import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("INSTANT ROUND 35"),
            centerTitle: true,
            leading: Icon(Icons.home),
            actions: [
              IconButton(onPressed: (){
                print('hola amigos es instant');
              }, icon: Icon(Icons.search))
            ],
          ),
        )
    );
  }
}



