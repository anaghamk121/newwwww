import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: lottie(),)));
}
class lottie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(children: [
        Lottie.asset("Animation/animation_lnyaic03.json"),
        Lottie.network("https://lottie.host/e0c03ca3-c653-4610-a22b-0c92d5e54c98/nuHsN3jWTu.json")
      ],),
    );

}
}