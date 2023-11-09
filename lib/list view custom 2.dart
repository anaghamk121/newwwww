import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContextcontext) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: sliverlist(),
    ),
  ));
}

class sliverlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("list view sliverchild")),
        body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
            ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/imoji.png"),
                ),
                title: Text("abc"),
                subtitle: Text("123"),
                trailing: Icon(
                  Icons.contact_page_rounded,
                ))
          ]),
        ));
  }
}
