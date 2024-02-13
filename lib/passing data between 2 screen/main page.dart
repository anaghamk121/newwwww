import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newwwww/passing%20data%20between%202%20screen/product%20list.dart';
import '../food advertisement/1  splash screen .dart';
import 'dummy data.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: logopage(),
    routes:{
      "secondpage":(context)=>ProductList(),
    }
  )));
}
class ProductsMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Home")),
      body: ListView(children:
      dummyproducts.map((product)=>TextButton(onPressed: ()=> gotoNext(context,product["id"]), child:Text("${product["name"]}",
    style: TextStyle(fontSize: 20),)))
      .toList()),
    );
  }
  void gotoNext(BuildContext context,products){
    Navigator.of(context).pushNamed("secondpage",arguments: products);
  }
}