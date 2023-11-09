import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: Listbuilder(),)));
}
class Listbuilder extends StatelessWidget{
  var name=["anu","ammu","ram","a","b","c"];
  var images=["images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png",
  ];
  var phone=["5454","6465","4656","545","54454","45455"];
  var colorss=[Colors.blue,Colors.greenAccent,Colors.green,Colors.yellow,Colors.lime,Colors.pinkAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView.builder(itemBuilder: (context,index){
          return Card(
            color: colorss[index],
            child:ListTile(
              leading: Image(image:AssetImage(images[index]),
              ),
              title:Text(name[index],
              ),
                subtitle:Text(phone[index]
                ),
                trailing:Icon(Icons.call),
              ),
            );
          },itemCount: name.length,
        )
    );
  }
  }
