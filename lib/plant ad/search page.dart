import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newwwww/plant%20ad/last%20page.dart';
import 'package:newwwww/plant%20ad/wish%20list.dart';

/*
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: searchpage(),
          )));
}
*/
class searchpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.grey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey,
         title: Row(
            children: [Padding(
              padding: const EdgeInsets.only(left: 230),
              child: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>detailspage()));
              },),
            ),Padding(
              padding: const EdgeInsets.only(left: 5,),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>wishlist()));
              }, icon:Icon(Icons.favorite,)

              ),
            )],
          ),
          bottom: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey,
            title: Row(
              children: [
                Container(width: 270,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Plants..",
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
             Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Container(width:20,decoration: BoxDecoration(color: Colors.white,
                   borderRadius: BorderRadiusDirectional.circular(10)),
               child: TextField(decoration: InputDecoration(icon:Icon(Icons.display_settings),),) ),
             )],
            ),
          ),
        ),
        body:Column(
          children: [Text("Found",style: TextStyle(fontSize: 30),),Text("3 Plants",style: TextStyle(fontSize: 30),),
            Container(
                height: 230,
                width: 200,
                child: Stack(
                   children: [
                  Positioned(
                    right: 20,
                    top: 20,
                    left: 30,
                    child: Container(color: Colors.white,height: 300,width: 100,
                      child: Column(
                        children: [
                          Image(height:155,width:130,image: NetworkImage("https://imgcdn.floweraura.com/profuse-jade-terrarium-9969080pl-A_0.jpg"
                          )),Text("Lucky jade plant"),
                          Text("2.99"), Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: Icon(Icons.favorite),)],),),
                  ),],),
            ),
          ]));
  }
}
