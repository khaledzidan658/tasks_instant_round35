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
          actions: [],),

        body:
        Container(
          decoration:  BoxDecoration(
            color: Color(0xFF0A0E21)
          ),

          child:

          Column(
            children: [

              Expanded(

                  child:Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width:200 ,
                            decoration:BoxDecoration( borderRadius: BorderRadius.circular(30),color: Color(0xFF1D1E4),) ,

                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              children: [
                                Icon(Icons.male,size: 80,color:Colors.white ,),
                                Text('Male',style: TextStyle(fontSize: 30,color: Colors.white),),
                              ],
                            ),

                          ),
                        ),
                        SizedBox(width: 20,),

                        Expanded(
                          child: Container(
                            width:200 ,
                            decoration:BoxDecoration( borderRadius: BorderRadius.circular(30),color: Color(0xFF1D1E4),) ,

                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              children: [
                                Icon(Icons.female,size: 80,color:Colors.white ,),
                                Text('Female',style: TextStyle(fontSize: 30,color: Colors.white),),
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                  )

              ),


              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xFF1D1E4),),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children:[
                        Text('Height',style: TextStyle(fontSize: 30,color: Colors.white),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('177',style: TextStyle(fontSize: 70,color: Colors.white),)
                            ,Text('cm',style: TextStyle(fontSize: 40,color: Colors.white),),]
                          ,),
                        Slider(value: .6, onChanged: (double x){}),
                      ],
                    ),

                  ),
                ),

              ),

              Expanded (

                  child:Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width:200 ,
                            decoration:BoxDecoration( borderRadius: BorderRadius.circular(30),color: Color(0xFF1D1E4),) ,

                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              children: [

                                Text('Weight',style: TextStyle(fontSize: 20,color: Colors.white),),
                                Text('70',style: TextStyle(fontSize: 50,color: Colors.white),),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.center ,

                                  children: [

                                    FloatingActionButton(onPressed:() {},child: Icon(Icons.add,),),
                                    SizedBox(width: 30,),
                                    FloatingActionButton(onPressed:() {},child: Icon(Icons.remove,),),
                                  ],
                                )
                              ],
                            ),

                          ),
                        ),
                        SizedBox(width: 20,),

                        Expanded(
                          child: Container(
                            width:200 ,
                            decoration:BoxDecoration( borderRadius: BorderRadius.circular(30),color:Color(0xFF1D1E4),) ,

                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              children: [

                                Text('Age',style: TextStyle(fontSize: 20,color: Colors.white),),
                                Text('70',style: TextStyle(fontSize: 50,color: Colors.white),),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.center ,
                                  children: [

                                    FloatingActionButton(onPressed:() {},child: Icon(Icons.add),),
                                    SizedBox(width: 30,),
                                    FloatingActionButton(onPressed:() {},child: Icon(Icons.remove),),
                                  ],
                                )
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                  )

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

                        Text('Calculate',style: TextStyle(fontSize: 40,color: Colors.white),)
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

