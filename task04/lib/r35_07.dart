import 'package:flutter/material.dart';
import '35_07.dart';
void main(){
runApp(StudentCodeApp());
}

class StudentCodeApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
     home: StudentScreen35_07()
      
    );

  }
}


import 'package:flutter/material.dart';


class StudentScreen35_07 extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          appBar: AppBar(backgroundColor: Colors.amberAccent , title:Text("Instant") ,centerTitle: true,   actions:[Icon(Icons.search)]),
          body:Text("r35_07" , style: TextStyle(fontSize:50 , color: Colors.brown)),
          backgroundColor: Colors.blue),




    );
  }
}