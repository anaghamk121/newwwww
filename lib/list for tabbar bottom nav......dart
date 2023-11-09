import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(home: listeg(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  )));
}
class listeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tabbar"),),
      body: ListView(children: [
        Card(color: Colors.white,
        child: Container(child: Row(children: [Container(child: Column(children: [
          Text("1"),Text("Monday")],),
          color: Colors.green,),
          SizedBox(width: 20,),
          Container(child: Text("Biriyani"),
    ),
          ListView(children: [Card(color: Colors.black,
          child: Container(child: Row(children: [Container(child: Column(children: [
            Text("2"),Text("Tuesday")],),
          color: Colors.blue,),
          SizedBox(width: 20,),
          Container(child: Text("meal"),)],),),)],)
        //  Padding(
          //    padding: const EdgeInsets.only(top: 20),
            //  child: Row(children: [Container(child: Column(children: [
  //    Text("2"),Text("Tuesday")],),
    //          color: Colors.red,),
      //        Padding(padding: EdgeInsets.only(top: 50,left: 10)),
    //Container(child: Text("Shawarma"),)],),
      //      ),


    ]),

        ),
    ),

    ]
      ),
    );
  }
}