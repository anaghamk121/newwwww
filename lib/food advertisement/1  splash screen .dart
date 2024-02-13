
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food login.dart';

class logopage extends StatefulWidget {
  @override
  State<logopage> createState() => _logopageState();
}

class _logopageState extends State<logopage> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => secondlogin()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zomato"),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 400,
        child: Center(
            child: Image(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrdCXBwGTbimlgCvoAOjR8K2QNrLGQUUFLmgf3DwnVCQ&s"),
        )),
      ),
    );
  }
}

/*
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

class picture extends StatefulWidget{
  @override
  State<picture> createState() => _pictureState();
}

class _pictureState extends State<picture> {
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Secondlogin()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(
     title: Text("Zomato"),
     backgroundColor: Colors.white,
   ), body: Container(
     width: double.infinity,
     decoration: const BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.cover,
           image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrdCXBwGTbimlgCvoAOjR8K2QNrLGQUUFLmgf3DwnVCQ&s"),
         )),
   ),
   );
  }
}*/
