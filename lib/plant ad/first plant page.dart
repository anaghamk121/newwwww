import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newwwww/plant%20ad/search%20page.dart';

/*void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
  MaterialApp(useInheritedMediaQuery: true,
  debugShowCheckedModeBanner: false,
  home: plantphoto(),)));
}*/
class plantphoto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Colors.white,
          title: Padding(
      padding: const EdgeInsets.only(left: 300),
      child: TextButton(onPressed: (){
      }, child:Text("skip"),),
    ),),
      body:SingleChildScrollView(child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 250,top: 150),
          child: Column(
            children: [
              Image(image: NetworkImage("https://www.ugaoo.com/cdn/shop/products/KrishPlanter-Ivory_"
                  "320ead20-6a05-48b0-8695-6b6b48bb9012.jpg?v=1680418262&width=550",
              ),height: 200,width: 200,),Padding(
                padding: const EdgeInsets.only(top: 38),
                child: Text("Enjoy Your ",style: TextStyle(fontSize: 30),
                )
              ),Text("Life With",style: TextStyle(fontSize: 30),),
              Column(
                children: [
                  Text("Plants",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              ),Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>searchpage()));
                },child: Icon(Icons.arrow_forward,)),
              ),
            ],),
        ),
      ),
      )
    );
}}