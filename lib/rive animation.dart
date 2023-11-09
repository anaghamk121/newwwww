import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main()=> runApp(MaterialApp(
  home: MyRiveAnimation()
    ));

class MyRiveAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
body: Center(
  child: RiveAnimation.asset(
      "riveanimation/6291-12204-corgi-sailor.riv",fit: BoxFit.cover,
  ),
),
  );
  }
}