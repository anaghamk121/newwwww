import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: grid(),),
  ));
}
class grid extends  StatelessWidget{
  var images=["images/Femfoyou-Angry-Birds-Angry-bird.512.png","images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png","images/Femfoyou-Angry-Birds-Angry-bird.512.png",
    "images/Femfoyou-Angry-Birds-Angry-bird.512.png"];
  var name=["TITAN","Sonata","Casio","Fastrack","Timex"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children:List.generate(5, (index) {
    return Card(
      child: Column(
          children: [Image(image: AssetImage(images[index],),height: 50,width: 50,),
            Text(name[index]
            ),
          ],
        ),
    );
      },
    ),
      )
    );
  }
}