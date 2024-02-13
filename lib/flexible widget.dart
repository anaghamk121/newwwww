import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: flexiblewidget(),
  )));
}
class flexiblewidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal,title: Text("Flexible widget"),),
    body: Column(children: [Container(height: 100,color: Colors.black87,),
    Row(children: [Flexible(flex: 2,
      child: Container(height: 100,color: Colors.blueGrey,),),
      Flexible(
        flex: 1,
        child: Container(
          height: 100,
          color: Colors.red,), ),
      Flexible(
        flex: 3,
        child: Container(
          height: 100,
          color: Colors.yellow,),),],),
      Container(
        height: 100,
        color: Colors.lightBlueAccent,)],));
  }
}



