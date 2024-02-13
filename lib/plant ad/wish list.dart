import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/plant%20ad/last%20page.dart';

class wishlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,
      actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>detailspage()));
      }, icon:Icon (Icons.arrow_back,color: Colors.black87, ))],),
      body: Image(image: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/screenshot-2023-06-13-at-1-52-12-pm-6488ad58e6ee6.png?crop=1xw:1xh;center,top&resize=980:*"),),
    );

}}