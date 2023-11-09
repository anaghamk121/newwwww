import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext)=>
      MaterialApp(
        useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Gridviewextend(),
  ) ));

}
class Gridviewextend extends StatelessWidget{
  var image=["images/img.png","images/img.png","images/img.png","images/img.png",
    "images/img.png","images/img.png","images/img.png","images/img.png","images/img.png"];
  var name=["a","b","c","d","e","f","g","h","i"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,
          crossAxisSpacing: 20,mainAxisSpacing: 20),
        children: List.generate(10, (index){
          return Card(
            child: Column(
              children: [
                Image(image:AssetImage(image[index]),),
                Row(
                  children: [
                    Text(name[index]),
                    SizedBox(width: 100,),
                    
                  ],
                )
    ],
                )
    );
          },
    ),
      )
    );
  }
}