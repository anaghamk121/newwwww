import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: gridbuilder(),)));
}
class gridbuilder extends StatelessWidget{
  var images=["images/fish.png","images/Femfoyou-Angry-Birds-Angry-bird.512.png","images/kingfisher.png"];
  var name=["ammu","anu","manu"];
  var rate=["1","2","3"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder:(context,index)
      {return Card(
        child: Column(children: [
          Image(image: AssetImage(images[index]),height: 100,width: 100),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(top: 20),
                child: Text(name[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
              SizedBox(width: 50,),
              Padding(padding: EdgeInsets.only(top: 20),
              child: Text(rate[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
            ],
          )
        ],),
      );
      },itemCount: 3,
      ),
    );
  }

}