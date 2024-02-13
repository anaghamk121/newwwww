import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: animatedbuilder(),
  )));
}
class animatedbuilder extends StatefulWidget{
  AnimatedBuilder({super.key}) {
    // TODO: implement AnimatedBuilder
    throw UnimplementedError();
  }
  @override
  State<animatedbuilder> createState() => _animatedbuilderState();
}

class _animatedbuilderState extends State<animatedbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
}
  with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

 @override
  void dispose(){
  _controller.dispose();
  super dispose();
  }

  @override
  Widget build(BuildContext context) {
  return AnimatedBuilder(animation: _controller,
  child: Container(width: 200,height: 200,color: Colors.teal,child:Center(child: Text("whee !"),),),
  builder:(BuildContext,child){
  return Transform.rotate(
  angle:_controller.value * 2.0 * math.pi,
  child: child,
  );
  }
  );
  }
  }
