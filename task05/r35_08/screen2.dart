import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFF0A0E21)
          , title:Text("BMI Calculator",style: TextStyle(color: Colors.white),)
          , centerTitle: true,
          actions: [],
         leading: Icon(Icons.arrow_back_rounded,color: Colors.white,),
        ),
        
        body:
        Container(
          decoration:  BoxDecoration(
              color: Color(0xFF0A0E21)
          ),
          child:  Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                 width: double.infinity,
                  decoration:BoxDecoration( color: Color(0xFF0A0E21)),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children:[


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Your Result',style: TextStyle(fontSize: 50,color: Colors.white),)
                          ,]
                        ,),

                    ],
                  ),

                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),

                  child: Container(

                    margin: EdgeInsets.only(top: 30,bottom: 10),
                    width:double.infinity,
                    decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xFF1D1E4),),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,

                      children:[

                        Text('NORMAL',style: TextStyle(fontSize: 40,color: Colors.green),),
                          SizedBox(height: 60,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('22.3',style: TextStyle(fontSize: 90,color: Colors.white),)]
                          ,),
                        SizedBox(height: 60,),


                        Text('You have a normal body weight.',style: TextStyle(fontSize: 25,color: Colors.white),),
                        Text('Good job!',style: TextStyle(fontSize: 25,color: Colors.white),),
                      ],

        ),

                  ),
                ),

              ),


              Container(
                width: double.infinity,

                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xFFEB1555)),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children:[


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Re-Calculate',style: TextStyle(fontSize: 40,color: Colors.white),)
                        ,]
                      ,),

                  ],
                ),

              ),


            ],

          ),
        ),

      ),

    );

  }
}

