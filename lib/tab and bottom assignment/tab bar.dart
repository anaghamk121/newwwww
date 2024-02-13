import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    home:ttabbar(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  )));
}
class ttabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      bottom: TabBar(tabs: [
        Tab(child: Text("Lunches",style: TextStyle(backgroundColor: Colors.indigo),),),
        Tab(child: Text("Cart",style: TextStyle(backgroundColor: Colors.indigo),),)
      ],),),
    )
    );

}
}