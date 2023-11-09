
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customwidget extends StatelessWidget{
  Text ?text;
  Color ?bgcolor;
  Image ?img;
  VoidCallback ? onpress;
  customwidget({this.text,this.bgcolor,this.img,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Card(
        color: bgcolor,
        child: ListTile(
          leading: img,
          title: text,
          onTap: onpress,
        ),
      ) ,);
}
}