import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main() {
  runApp(MaterialApp(
    home: screen(),
  ));
}

class screen extends StatefulWidget {
  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // brightness:Brightness.light,elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "find yours",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),SizedBox(height: 5,),
                  Text("Inspiration",style: TextStyle(color: Colors.black,fontSize: 40),),
                  Container(padding:EdgeInsets.all(5),decoration:BoxDecoration(color:Colors.greenAccent),child: TextField(decoration: InputDecoration(),),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
