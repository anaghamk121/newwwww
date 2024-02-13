import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(

    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: fittedbox(),
  )));

}
class fittedbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fitted box"),),
      body: ListView(children: [FittedBox(fit: BoxFit.scaleDown,alignment: Alignment.center,
        child: Container(width: 150,height: 100,
          child: Row(children: [Image(image: AssetImage("images/cat.png")),
            Container(height:20,child: Text("sample text"),)],),),)],),
    );
  }

}


