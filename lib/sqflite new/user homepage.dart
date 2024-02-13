import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';



class userhomepage extends StatelessWidget{
  final data;
  const userhomepage({Key? key,required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Container(child: Column(children: [Center(child: Image(image: AssetImage("images/img.png"))),
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ElevatedButton(onPressed: (){}, child:Text("Logout") ),
      )],),),
    );
  }
}