import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery:true,
        debugShowCheckedModeBanner:false,
        home: Tapbar() ,)));
}
class Tapbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5,child: Scaffold(
      appBar: AppBar(title: Text("Shopping fest"),backgroundColor: Colors.black87,
      bottom: TabBar(tabs: [

        Tab(icon:Icon(Icons.home_filled),
        text:"Home"),
        Tab(icon:Icon(Icons.person),
          text: "you",),
          Tab(icon: Icon(Icons.category),
            text: "category",),
      Tab(icon: Icon(Icons.notification_add,),
        text: "notifications",),
      Tab(icon: Icon(Icons.account_circle),
        text: "account",),
        Tab(icon: Icon(Icons.shopping_cart),
        text: "cart",)
      ]),
      ) ,
      body: TabBarView(
        children:[
          Icon(Icons.home),
          Icon(Icons.person),
    Icon(Icons.category),
    Icon(Icons.notification_add),
    Icon(Icons.account_circle),
          Icon(Icons.shopping_cart),
        ]
      ),
    )
    );
  }
}