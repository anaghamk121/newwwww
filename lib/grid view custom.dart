import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(
        useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: gridviewcustom(),
  ) ));
}

class gridviewcustom extends StatelessWidget {
  var name = ["a", "b", "c", "d", "e", "f"];
  var images = [
    "images/figure.png",
    "images/figure.png",
    "images/figure.png",
    "images/figure.png",
    "images/figure.png",
    "images/figure.png"
  ];
  var rate = ["1", "2", "3", "4", "5", "6"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: Colors.grey,
                  child: Column(
                    children: [Expanded(child:Image(image: AssetImage(images[index]),fit:BoxFit.fill)),
                       SizedBox(
                         height: 20,
                       ),
                      Row(
                        children: [
                           SizedBox(
                             width: 80,
                          ),
                          Text(name[index],style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black),),
                          //SizedBox(width: 25,),
                          Text(rate[index],style: TextStyle(fontStyle: FontStyle.italic),),
                        ],
                      )
                    ],
                  ),
                );
              },
              childCount: images.length,
            )));
  }
}
