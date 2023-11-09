import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner:false,
    home: listeg(),)));
}
class listeg extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tabbar"),),
      body: ListView(Card(color: Colors.white,
        child: Container(
          child: Row(
            children: [Container(child: Column(
              children: [Text("2"),Text("Tuesday")],
            ),color: Colors.green,),SizedBox(width: 20,),Container(child: Text("Meal")
            ),
            ],
          ),
        ),
      ),
      ),
      ListView(children: [Card(color: Colors.white,
      child: Container(
        child: Row(
          children: [Container(child: Column(
            children: [Text("3"),Text("Wednesday")
      ],),color: Colors.blue,),SizedBox(width: 20,),
            Container(child: Text("Biriyani"),
            )
      ],
      ),
      ),
      )
      ]
      )
    );

  }
}