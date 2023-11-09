import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
  MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home:homepage() ,)));
}
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5,child: Scaffold(
      appBar: AppBar(title: Text("calculator"),backgroundColor: Colors.blue,
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.zoom_in_map_outlined),),
        Tab(icon: Icon(Icons.output_outlined),),
        Tab(icon: Icon(Icons.currency_exchange_outlined),),
      ],
      )
      ),
      body: TabBarView(
          children: [
            Icon(Icons.zoom_in_map_outlined),
            Icon(Icons.output_outlined),
            Icon(Icons.currency_exchange_outlined)
          ],
        ),

    )
    );


}}