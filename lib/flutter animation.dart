import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: MyAnimationPage(),);}}
class MyAnimationPage extends StatefulWidget{
  const MyAnimationPage({super.key});
 @override
  _MyAnimationPageState createState() =>_MyAnimationPageState();}
 class _MyAnimationPageState extends State<MyAnimationPage>
with SingleTickerProviderStateMixin{
  late AnimationController
  _controller;
  late Animation<double>
  _animation;
 @override
  void initState(){
    super.initState();
    _controller =AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,);
    _animation = Tween<double>(begin: 0,end: 6).animate(_controller);  }
 @override
  void dispose(){
    _controller.dispose();
    super.dispose(); }
      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            _controller.forward(); },
          child:const Text("Flutter Animation")),
       actions:[
        GestureDetector(
          onTap: () {
            dispose(); },
      child: Container(
      height: 50,
        width: 50,
        color: Colors.grey,) ),
          GestureDetector(
            onTap: (){
              _controller.reverse(); },
            child: Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
      )),GestureDetector(
            onTap: (){
              _controller.reset();
            },
            child: Container(
              height: 50,
              width: 50,
              color: Colors.green,
            )),
        ]
      ),
      body: Column(
        children: [
          Center(
            child: AnimatedBuilder(
              animation:_controller,
              builder: (context,child) {
                return Transform.scale(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                );
              }
    )
          ),GestureDetector(
            onTap: (){
              _controller.stop();
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          )
    ],
    ),
    );
    }
}




