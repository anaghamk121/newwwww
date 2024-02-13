import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newwwww/plant%20ad/search%20page.dart';

/*void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    home: detailspage(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  )));
}*/
class detailspage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
          title: IconButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>searchpage()));
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.black87,)),
        /*actions: [Icon(Icons.shopping_cart,color: Colors.black87,)],*/),
      body:SizedBox(child: Image(width:380,height:250,image: NetworkImage("https://imgcdn.floweraura.com/profuse-jade-terrarium-9969080pl-A_0.jpg"
      ),),
      ),
    );
}}