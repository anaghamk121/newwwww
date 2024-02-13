import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title:"homepage",
  );
}}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async{
     return await showDialog(context: context, builder:(context)=>AlertDialog(
       title: const Text("Exit App"),
       content: const Text("Do you want to exit app ?"),
       actions: [
         ElevatedButton(onPressed: ()=>Navigator.of(context).pop(false), child:const Text("No"),),
         ElevatedButton(onPressed: ()=>Navigator.of(context).pop(true), child: const Text("yes"),
         )],
     ),
     )?? false;
    }
    return WillPopScope( onWillPop: showExitPopup,child: Scaffold(
      appBar: AppBar(title: const Text("Override Back Button"),
      backgroundColor: Colors.teal),
      body: const Center(
        child: Text("Override Back Button"),
      ),
    ),
    );
  }
  
}