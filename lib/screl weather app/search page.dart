
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

class location extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
      elevation: 0,
      title: Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(suffixIcon: Padding(
            padding: EdgeInsets.only(right: 320),
            child: Icon(Icons.search,),
          ),
          ),
        ),),
      backgroundColor: Colors.lightBlue,
    ),);

}}
