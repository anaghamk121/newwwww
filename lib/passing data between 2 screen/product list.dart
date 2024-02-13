import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dummy data.dart';

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final products=dummyproducts.firstWhere((products) =>products["id"]==id);
    return Scaffold(
      appBar: AppBar(title: Text("Products"),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: ListView(children: [
        SizedBox(height: 100,width: 100,
        child: Image.network("${products["image"]}")),
      Text("${products["name"]}",
      style: TextStyle(fontSize: 30),
      ),
      Text("${products["description"]}")
      ],),),
    );
}}