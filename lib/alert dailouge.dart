import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(
    useInheritedMediaQuery: true,
  debugShowCheckedModeBanner: false,
      home: alert(),)));
}
class alert extends StatefulWidget {
  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: () {
        showDialog(context: context, builder: (context) {
          return AlertDialog(
            title: Text("Exit....."),
            content: Text("Do you want to exit the app !"),
            actions: [
              TextButton(onPressed: (){Navigator.of(context).pop();}, child:Text("Yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("cancel")),
            ],
          );
        },
        );
      }, child:Text("show dailogue"),
      )
    )
    );
  }

}
