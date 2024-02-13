import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main(){
  runApp(MaterialApp(
    home: adminhome(),
  ));
}
class adminhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Container(child: Column(children: [Center(child: Image(image: AssetImage("images/Iconka-Meow-2-Cat-gift.256.png"))),
      ElevatedButton(onPressed: (){}, child: Text("Logout"))],),),
    );
  }
  
}