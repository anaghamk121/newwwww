import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: Listseperated(),)));
}
class Listseperated extends StatelessWidget{
  var name=["anu","manu",];
  var images=["images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png"];
  var phone=["9076845629","9451238969",];
  var colorss=[Colors.greenAccent,Colors.lightBlue,Colors.grey];

  Widget build(BuildContext context){
    return Scaffold(
    body: ListView.separated(itemBuilder: (context,index)
  {
    return Card(color: colorss[index],
      child: ListTile(
        leading: Image(image: AssetImage(images[index])
        ),
        title: Text(name[index]
        ),
        subtitle: Text(phone[index]),

        trailing: Icon(Icons.access_alarm),
      ),
      );
    },separatorBuilder:(context,index) {
          return Divider(
          thickness:5,
              color:Colors.deepOrange,
          );
          }, itemCount: name.length),
    );
  }
}




