import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext)=> MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: GridViewcount(),)
  ));
}
class GridViewcount extends StatelessWidget{
  var images=["images/imoji.png","images/imoji.png","images/imoji.png",
    "images/imoji.png","images/imoji.png"];
  var name=["a","b","c","d","e"];
  var rate=["1","2","3","4","5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      children: List.generate(6, (index)
      {
        return Card(
          child: Column(
            children: [
        Image(image: AssetImage(images[index]),height: 10,width: 10),
        Row(
          children: [
            Padding(
              padding:EdgeInsets.only(bottom: 100),
              child: Text(name[index]),
            ),
            Text(rate[index]),
          ]
        )
      ]
      )
        );
          }
          )
      )
    );
}
}