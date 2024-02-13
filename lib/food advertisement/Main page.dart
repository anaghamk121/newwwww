import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '1  splash screen .dart';
import 'food data.dart';
import 'food list.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: logopage(),
      routes:{
        "secondpage":(context)=>foodlist(),
      }
  )));
}
class foodMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Home")),
      body: ListView(children:
      fooods.map((product)=>TextButton(onPressed: ()=> gotoNext(context,product["id"]), child:Text("${product["name"]}",
        style: TextStyle(fontSize: 20),)))
          .toList()),
    );
  }
  void gotoNext(BuildContext context,products){
    Navigator.of(context).pushNamed("secondpage",arguments: products);
  }
}