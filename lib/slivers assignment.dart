import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: slivereg(),)));
}
class slivereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
          floating: true,pinned: true,
          expandedHeight: 150,
          //  flexibleSpace:Container(color: Colors.black,),
            title: Text("Conversations",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
            actions: [TextButton(onPressed: (){}, child: Text("+ Add new", style: TextStyle(color: Colors.red),),
            ),
            ],bottom: AppBar(backgroundColor: Colors.white,
            elevation: 0,
            title: Container(decoration: BoxDecoration(color: Colors.white),
            child: TextField(decoration:InputDecoration(hintText:"Search..."),),
          ),
          ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            ListTile(leading: Icon(Icons.person),
            title: Text("Kriss Benwat"),
            subtitle: Text("ok"),
            trailing:Text("Today"),),
            ListTile(leading:Image(image: AssetImage("images/cat.png"),) ,
                title: Text("gouri"),
            subtitle: Text("ok "),
            trailing: Text("yesterday"),),
            ListTile(leading: Image(image: AssetImage("images/Iconka-Meow-2-Cat-gift.256.png"),),
              title: Text("maya"),
              subtitle: Text("nice"),
              trailing: Text("oct20"),),
            ListTile(leading: Image(image: AssetImage("images/kingfisher.png"),),
            title: Text("Vinu"),
            subtitle: Text("bye"),
            trailing: Text("oct18"),),
            ListTile(leading: Image(image: AssetImage("images/fish.png"),),
            title: Text("Meenu"),
            subtitle: Text("I'll call you later"),
            trailing: Text("oct18"),),
            ListTile(leading: Image(image: AssetImage("images/women.png"),),
            title: Text("Veena"),
            subtitle: Text("see you soon"),
            trailing: Text("oct 17"),),
            ListTile(leading:Image(image: AssetImage("images/man.png"),),
            title:Text("Varun"),
            subtitle: Text("good morning"),
            trailing: Text("last week"),),
            ListTile(leading:Image(image: AssetImage("images/img.png"),),
                title: Text("Ammu"),
            subtitle: Text("last month"),),
          ]
          )
          ),
          ],
      ),
      bottomNavigationBar:BottomNavigationBar(selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.api_outlined),label: "Channel"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile")
      ],)
    );
  }
}