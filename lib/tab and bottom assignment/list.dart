import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner:false,
    home: listeg(),)));
}
class listeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabbar"),),
      body: ListView(children:[ Card(color: Colors.white, child:
      Container(
          child: Row(
              children: [Container(child: Column(
                children: [Text("1"),Text("Monday     ")],
              ),color: Colors.green),SizedBox(width: 20),
                Container(child: Text("Meal")),
              ])),
      ),Container(
          child: Row(
              children: [Container(child: Column(
                children: [Text("2"),Text("Tuesday      ")],
              ),color: Colors.teal),SizedBox(width: 20,),
                Container(child: Text("Biriyani")),
              ])),
        Container(
            child:Row(
                children: [Container(child: Column(
                  children: [Text("3"),Text("Wednesday")],
                ),color: Colors.blueAccent),SizedBox(width: 20),
                  Container(child: Text("Burger"),)
                ])),
        Container(child: Row(children: [Container(child: Column(
          children: [Text("4"),Text("Thursday    ")],
        ),color: Colors.red,),SizedBox(width: 20,),
          Container(child: Text("Shawarma "),)
        ])),
        Container(
            child: Row(
                children: [Container(child: Column(
                  children: [Text("5"),Text("Friday          ")],
                ),color: Colors.blueGrey,),SizedBox(width: 20),
                  Container(child: Text("Chiken 65"))
                ])),
        Container(
            child: Row(
              children: [Container(child: Column(
                children: [Text("6"),Text("Saturday     ")],
              ),color: Colors.amberAccent),SizedBox(width: 20),
                Container(child: Text("Porotta"),)],
            )),
        Container(
          child: Row(
            children: [Container(child: Column(
              children: [Text("7"),Text("Sunday        ")],
            ),color: Colors.lightGreen),SizedBox(width: 20),
              Container(child: Text("Chapathi"),)],
          ),
        ),
      ]),
    );
  }
}