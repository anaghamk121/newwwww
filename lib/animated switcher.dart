import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: animatedswitcher(),
  )));
}
class animatedswitcher extends StatefulWidget{
  @override
  State<animatedswitcher> createState() => _animatedswitcherState();
}
class _animatedswitcherState extends State<animatedswitcher> {
  bool txt =true;
  void btn(){
    setState(() {
      txt =!txt;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,title: Text("Animated switcher")),
      body:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [AnimatedSwitcher(duration: Duration(seconds: 6),transitionBuilder:(Widget child,
            Animation<double>animation)=>
            ScaleTransition(child: child,scale: animation,),
        child: txt ? Container(key: ValueKey<int>(1),
        width: 200,height: 200,color: Colors.teal,):Container(key: ValueKey<int>(2),)),
          Center(child: Image(image: AssetImage("images/cat sleep.png"),height: 250,width: 250)),
        Padding(padding: EdgeInsets.only(top: 30),child: ElevatedButton(onPressed: btn,child: Text("Toggle widgets"),
        ),)],),) ,
    );
  }
}
