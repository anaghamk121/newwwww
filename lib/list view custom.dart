

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContextcontext) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listviewcustom(),
    ),
  ));
}

class Listviewcustom extends StatelessWidget {
  var name = ["abc", "def"];
  var phone = ["123", "456"];
  var image = ["images/imoji.png", "images/imoji.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view custom")),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
       (context,index) {
         return Card(
           child: ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage(image[index])),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
           )
         );
        },
        childCount:name.length,
      )
      ),
    );
  }
}
