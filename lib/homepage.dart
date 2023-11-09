import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: Homepage(),)));
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),
      ),
      body:ListView(
        children: [
          Card(color:Colors.lime,
            child: ListTile(
              leading: CircleAvatar(backgroundImage:AssetImage("images/Femfoyou-Angry-Birds-Angry-bird.512.png")),
              title: Text("anu"),
                subtitle: Text("9865239021"),
            trailing: Icon(Icons.call),
            ),
          ),
          Card(color:Colors.blue,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(" images/imoji.png"),),
              title: Text("chithra"),
              subtitle: Text("8735426710"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: (Colors.deepPurple),
            child: ListTile(
              leading:Icon(Icons.person),
              title: Text("anusha"),
              subtitle: Text("7098542351"),
              trailing: Icon(Icons.person),
    ),
          ),
    Card(color: (Colors.cyan),
      child: ListTile(
      leading: Icon(Icons.person),
      title: Text("arun"),
      subtitle: Text("7034562178"),
      trailing: Icon(Icons.person),
      ),
    )
        ],
      )
    );
  }
}
