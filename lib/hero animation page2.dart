import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Colors.black,title: Text("HERO ANIMATION",style: TextStyle(color: Colors.red),),),
        body: Center(
          child: Hero(
            tag: "Hero1",
            child: Container(
              child: Image.asset("images/cat.png"),
              height: 300,
            ),
          ),
        )
    );
  }

}