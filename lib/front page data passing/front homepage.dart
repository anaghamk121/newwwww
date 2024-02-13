import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:shared_preferences/shared_preferences.dart';

import 'front loginpage.dart';

/*void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: fronthomepage(),
  )));
}*/
class fronthomepage extends StatefulWidget{
  @override
  State<fronthomepage> createState() => _fronthomepageState();
}

class _fronthomepageState extends State<fronthomepage> {
  late SharedPreferences logindata;
  late String name;

  @override
  void initState(){
    initial();
  }
  void initial () async {
    logindata =await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString("name")!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,title: Text("shared preferance example",style: TextStyle(color: Colors.black87),),),
      body:SingleChildScrollView(child:Column(children: [Padding(
        padding: const EdgeInsets.only(top: 40,left: 90,right: 50),
        child: Text("Hi $name  Welcome to Luminar",style: TextStyle(fontSize: 35,fontStyle: FontStyle.italic,color: Colors.black87),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 65),
        child: Center(child: ElevatedButton(onPressed: (){
          logindata.setBool("newuser",true );
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>frontloginpage()  ));
        }, child: Text("Log out"))),
      ),

    ]) ));
  }
}