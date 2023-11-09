import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:expandeg() ,));
}
class expandeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
            Container(color: Colors.red,height: 100,),
            Expanded(child: Container(color: Colors.teal,),
            ),
            Expanded(child: Container(color: Colors.black,),)
    ])

    );
  }
}