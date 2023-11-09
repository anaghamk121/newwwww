import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newwwww/place%20holder%20widget.dart';
import 'package:progressive_image/progressive_image.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: showImage(),
  )));
}
class showImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text("Demo Explore"),),
        body: Center(child: ProgressiveImage(placeholder: NetworkImage("https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcnN8ZW58MHx8MHx8fDA%3D"),
          thumbnail: NetworkImage("https://images.unsplash.com/photo-1541348263662-e068662d82af?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BvcnRzJTIwY2FyfGVufDB8fDB8fHww"),
          image:NetworkImage("https://media.istockphoto.com/id/1157655660/photo/generic-red-suv-on-a-white-background-side-view.jpg?s=612x612&w=0&k=20&c=ecrvXZhimUHnYES-kx7L5b-TDtRU5kAFPpNm0ZtAp1Y="),
          width: 500,
          height: 300 ,)
        )   );

}}