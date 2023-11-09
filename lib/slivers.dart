import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner: false,
    home: sliverseg(),)));
}
class sliverseg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: CustomScrollView(
     slivers:[
       SliverAppBar(
         floating: true,
         pinned: true,
         flexibleSpace:Container(color: Colors.blueGrey,),
         expandedHeight: 100,
         title: Text("Sliver Example"),
         actions: [
           IconButton(onPressed: (){

 }, icon:Icon(Icons.shopping_cart)),
           IconButton(onPressed: (){}, icon:Icon(Icons.favorite))],
    bottom: AppBar(
      elevation: 0,
    title: Container(decoration: BoxDecoration(color: Colors.white,),
      child: TextField(
    decoration: InputDecoration(hintText: "Search something",suffixIcon: Icon(Icons.search)),
    ),
    ),
    )
    ),
       SliverList(delegate: SliverChildListDelegate(
         [
           ListTile(leading: Icon(Icons.account_box),
           title: Text("anu"),
           subtitle: Text("7065346210"),)
         ]
       ))
     ]
   ),
 );
  }
}