import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: tabandbottom(),
  )));
}
class tabandbottom extends StatefulWidget{
  var screen=[];
  @override
  State<StatefulWidget> createState()=>tabandbottomstate();

}
class tabandbottomstate extends State<tabandbottom>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CupertinoColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.teal,
        onTap: (tapindex){
          setState(() {
          }
          );
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.lunch_dining),label: "Lunches"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Account"),
        ],
      ),
    );
  }
}