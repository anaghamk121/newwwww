import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: sizerwidget(),
  )));
}
class sizerwidget extends StatelessWidget{
  sizerwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Center(child: Container(
      color: Colors.red, height: 200, width: 300,
      child: Center(child: Text("hello world"),),),),),
    );
  }}