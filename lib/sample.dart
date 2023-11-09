import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp
        (useInheritedMediaQuery: true,
          debugShowCheckedModeBanner:false,
          home: sample(),
          )));
}
class sample extends StatefulWidget {
  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(     //nav-one state to another ,
          context, MaterialPageRoute(builder: (context) => Loginpage()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          color: Colors.cyan[50],
          child: Padding(
            padding: const EdgeInsets.only(top: 300, left: 50, right: 50),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(
                        "images/Femfoyou-Angry-Birds-Angry-bird.512.png"),
                    height: 100,
                    width: 100,),
                  Text("welcome to flutter",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}