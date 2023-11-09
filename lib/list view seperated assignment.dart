import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home:Listseperated(),)));

}
class Listseperated extends StatelessWidget{
  var name=["item 1","item2","item3","item4","item5","item6","item7","item8","item9"];
  var text=["seperator","seperator1","seperator2","seperator3","seperator4","seperator5","seperator6","seperator7","seperator8"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(title: Text("list view seperator"),),
      body: ListView.separated(itemBuilder: (context,index)
          {
            return Card(color: CupertinoColors.white,
              child: ListTile(
                title: (Text(name[index],style:TextStyle(fontSize: 20))),
              ),
            );
          },
          separatorBuilder: (context,index)
          {
            return Container(
              child: Text(text[index],style: TextStyle(fontSize: 20),),
              color: Colors.blueGrey,
            );
          },
          itemCount: name.length),
    );
  }
}