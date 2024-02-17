
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/screl%20weather%20app/search%20page.dart';

import 'menu.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(home: homescreen(),
  useInheritedMediaQuery: true,
  debugShowCheckedModeBanner:  false,)));
}
class homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.only(left: 70),
        child: Text("January 29,2024",style: TextStyle(color: Colors.white),),
      ),backgroundColor: Colors.blue[300],),
      body: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 130,top: 10),
            child: Text("Calicut",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white
            ),)
          ),

       SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 120),
        child: Image.network(
          "https://img.icons8.com/?size=80&id=0njqrGYW1zC4&format=png", // Replace with your image asset path
          height: 100,
        ),
      ),//Row(children: [Icon(Icons.cloud),Icon(Icons.cloudy_snowing)],),
        // Container(color: Colors.lightBlue[900],height: 160,width: 200,),
          //Row(children: [Icon(Icons.cloud),Icon(Icons.cloudy_snowing)],),
    ]), 
        
        
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue[900], items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: IconButton( onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>location())); }, icon: Icon(Icons.add),), label: "add"),
          BottomNavigationBarItem(icon: IconButton( onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>menu()));  }, icon:Icon(Icons.menu),), label: "menu"),
        ]
    )
    );

}}