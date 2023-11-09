import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=> MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,home: drawereg(),)));
}
class drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("drawwereg"),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(decoration:BoxDecoration(color: Colors.blueGrey),  //backgrond image
              accountName: Text("Anagha"),
              accountEmail:Text("anaghamk7@gmail.com"),
            currentAccountPicture:CircleAvatar(backgroundImage: AssetImage("images/women.png")),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("images/imoji.png")),
              CircleAvatar(backgroundImage: AssetImage("images/figure.png")),
            ],),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text("starred"),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Sceduled"),
            ),
            ListTile(leading:Icon(Icons.send),
            title: Text("sent"),),
            ListTile(
              leading: Icon(Icons.outbox),
              title: Text("outbox"),
            ),
            ListTile(leading: Icon(Icons.drafts),
            title: Text("drafts"),),
            ListTile(leading: Icon(Icons.mail_lock_sharp),
            title: Text("All mail"),),
          ListTile(leading:Icon(Icons.error),
          title: Text("spam"),
          ),
          ListTile(leading: Icon(Icons.delete),
          title: Text("Bin"),),
            Divider(thickness: 1,color: Colors.black,),
            ListTile(leading: Icon(Icons.calendar_month,),
              title: Text("Calender"),
            ),
          ListTile(leading: Icon(Icons.contacts),
          title: Text("Contacts"),)],

        ),
      ),
    );
  }
}