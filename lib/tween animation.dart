import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Tweenanimation(),
  )));
}
class Tweenanimation extends StatefulWidget{
  @override
  State<Tweenanimation> createState()=>TweenanimationState();
}
class TweenanimationState extends State<Tweenanimation>
with SingleTickerProviderStateMixin{double animationEnd=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(child:Center(
        child: TweenAnimationBuilder(tween:Tween<double>(begin:50.0,end: 500) ,
        duration:Duration(seconds: 5) ,
        builder: (BuildContext context,value,child) { return Container(child:
        Image(image: AssetImage("images/cat.png"),height: value,width: value,));},
        ),
      ),
      ) );
}}
