import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: Stackeg(),)));
}
class Stackeg extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
      children: [
        Center(child: Container(color: Colors.red,height:350,width: 350,),),
       Positioned(child: Container(color: Colors.green,height: 90,width: 100,),top: 350,left:60 ,),
       Positioned(child: Container(color: Colors.blueAccent,height: 90,width: 100,),top: 350,right: 60,),


    ]
    )
    );
  }
}