import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home:Calllisteg() ,)));
}
class Calllisteg extends StatelessWidget{
  var image=["images/Femfoyou-Angry-Birds-Angry-bird.512.png","images/img.png","images/figure.png"];
  var name=["anu","abhi","manu"];
  var phone=["9076451278","7965231065","9580341267"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(leading:Image(image: AssetImage(image[index]),
          ),
          title: Text(name[index]
          ),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
          ),
        );
    }
      ),
    );
  }
}