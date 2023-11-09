import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
  MaterialApp(useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: ListViewSeperatedeg(),)));
}
class ListViewSeperatedeg extends  StatelessWidget{

  var name=["manu","anu","abhi"];
  var images=["images/imoji.png","images/man.png","images/figure.png"];
  var imoji=["**","##","^^"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:ListView.separated(itemBuilder: (context,index){
        return Card(color: CupertinoColors.white,
        child: ListTile(
          leading: Image(image: AssetImage(images[index]),),
          title: (Text(name[index],style: TextStyle(fontSize: 20),)
          ),subtitle: Text(imoji[index],style: TextStyle(fontSize: 10),),
        ),
        );
      },
        separatorBuilder:(context,index){
        return Divider(thickness: 5,color: Colors.green,);
        },itemCount:name.length),
    );
  }
}