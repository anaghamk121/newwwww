
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cutom widget.dart';
void main(){
  runApp(MaterialApp(home: customeg(),));
}
class customeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("vfs"),),
      body: Container(
        child: customwidget(
          onpress: () {

          },
          img: Image(image: AssetImage("images/Femfoyou-Angry-Birds-Angry-bird.512.png"),),
          text: Text("anu"),
          bgcolor: Colors.teal,
        ),
      )
          );
  }

}