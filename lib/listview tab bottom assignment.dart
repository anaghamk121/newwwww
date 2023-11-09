import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context) =>
      MaterialApp(useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: tabbareg(),)));
}
class tabbareg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}