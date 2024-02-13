import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridcount(),
  ));
}
class gridcount extends StatelessWidget
{
  var images=["images/women.png","images/women.png","images/women.png","images/women.png","images/women.png","images/women.png"];
  var name=["first","second","third","fourth","fifth","sixth"];
  var rate=["1","2","3","4","5","6"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(crossAxisCount: 3,
          children: List.generate(6, (index)
          {
            return Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image(image: AssetImage(images[index]),),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 80)),
                      Text(name[index]),
                      Text(rate[index])
                    ],
                  ),],
              ),);
          }),
        )
    );
  }

}