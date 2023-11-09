import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newwwww/list%20view%20custom%202.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: farmer(),
          )));
}
class farmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("FARMERS FRESH ZONE"),
            flexibleSpace: Container(color: Colors.green),
            actions: [Row(
              children: [
                Text("Kochi"),
              ],
            ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on),
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 320),
                    child: Icon(Icons.search,),
                  ),
                  ),
                ),),
              backgroundColor: Colors.green,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 80, width: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 25, width: 90,
                        child: Center(child: Text("vegetables")),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.all(Radius.circular(
                              60)),),),
                      Container(width: 80,
                        height: 25,
                        child: Center(child: Text("Fruits")),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.all(Radius.circular(
                                60))),),
                      Container(height: 25,
                        width: 110,
                        child: Center(child: Text("Exotic Fruits")),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.all(Radius.circular(
                                60))),
                      ),
                    ],

                  ),
                ),

                Container(height: 250, width: 300,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2,
                        enlargeCenterPage: true,),
                      items: [Container(
                        child: Image(image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXz"
                                "5zROiRB8qUrveA2WYcNIfBsUF0yQjH5Ag&usqp=CAU"),
                          fit: BoxFit.fill,),
                      )
                      ]
                  ),
                ), Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: (Container(height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Column(
                          children: [
                            Icon(Icons.timer), Text("30 mins policy"),
                          ]), Column(children: [Icon(Icons.person), Text(
                          "Traceability")
                      ]), Column(children: [Icon(Icons.surround_sound), Text(
                          "Local surrounding")
                      ]),
                      ]),
                )
                ),
              ), Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  child: Text("Shop by category", style: TextStyle(fontSize: 20)
                  ),
                ),
              ), Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz_ZvSdVpmmw3jRwiEhLYJLtxrLWStHlGJkVElORFnRU2sKXMJi9oWv9avy86n53no514&usqp=CAU"
                      ), height: 60,),
                      Image(image: NetworkImage(
                          "https://media.istockphoto.com/id/1203599923/photo/food-background-with-assortment-of-fresh-organic-vegetables.jpg?s=612x612&w=0&k=20&c=DZy1JMfUBkllwiq1Fm_LXtxA4DMDnExuF40jD8u9Z0Q="
                      ), height: 60,),
                      Image(image: NetworkImage(
                          "data:image/jpeg;base64,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"
                      ), height: 60,)
                    ],),),
              )
              ],
            ),
          ),
        ],
        ),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.greenAccent[400], items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Account"),
        ]
        )
    );
  }
}
