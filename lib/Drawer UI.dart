import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder:(BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home:drawereg() ,)));
}
class drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Drawer"),),
      drawer:Drawer(child:ListView(children: [
        UserAccountsDrawerHeader(accountName:Text( "Manuajith"), accountEmail:Column(children: [
          Padding(padding: const EdgeInsets.only(right: 200),child: Text("manuajith@gmail.com"),),
          Row(children: [
            SizedBox(height: 30,),
            Text("500 followers"),
          SizedBox(width: 30,),Text("550 following"),
          ],
          ),
        ]
        ),
            currentAccountPicture: Image(image: AssetImage("images/figure.png"),),
      ),Divider(thickness: 1,color: Colors.black,),
      ListTile(leading: Icon(Icons.file_copy_sharp),
        title: Text("My files"),
    ),
        ListTile(leading: Icon(Icons.people_alt),
        title: Text("Shared with me"),),
        ListTile(leading: Icon(Icons.access_time_rounded),
        title: Text("Recent"),),
        ListTile(leading: Icon(Icons.offline_pin),
        title: Text("Offline"),),
        ListTile(leading: Icon(Icons.upload),
        title: Text("Upload"),),
        ListTile(leading: Icon(Icons.backup),
        title: Text("Backup"),),
        ListTile(leading: Icon(Icons.delete),
        title: Text("Trash"),),
        Divider(thickness: 1,color: Colors.black,),
        ListTile(leading: Icon(Icons.settings),
        title: Text("Settings and account"),)
    ],
      ),
      )
    );
  }
}