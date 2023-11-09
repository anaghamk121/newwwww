import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery:true,
    debugShowCheckedModeBanner: false,
    home: Bottomnav(),)));

}
class Bottomnav extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_bottomnavstate();
}
class  _bottomnavstate extends State<Bottomnav>{
  var screen=[
    Loginpage(),
    Loginpage(),
    Loginpage(),
    Loginpage(),
    Loginpage(),
  ];
  int index=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black12,
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          }
          );
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search",
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "people",
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite",
          backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(icon: Icon(Icons.logout,),label:"logout",
              backgroundColor:Colors.lightBlueAccent ),
        ],
      ),
      body: screen[index],
    );

  }
}
