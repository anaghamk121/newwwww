import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'courousal.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Homeui(),
      )
  )
  );
}


class Homeui extends StatelessWidget{
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverAppBar(backgroundColor: Colors.green[300],
                floating: true,
                pinned: true,
                expandedHeight: 100,
                title: Text("FARMERS FRESH ZONE"),
                actions: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                      }, icon: Icon(Icons.location_on_outlined,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("Kochi"),
                      ),
                    ],
                  )
                ],
                bottom: AppBar(

                  elevation: 0,
                  backgroundColor: Colors.green[300],
                  title: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for Vigitables and Fruits",prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate(
                [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 20),
                          child: Container(child: TextButton(onPressed: (){} , child: Text("VEGITABLRS",style: TextStyle(color: Colors.green),)),decoration: BoxDecoration
                            (borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.green)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 20),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(child: Padding(
                              padding: const EdgeInsets.only(left: 0,right: 0),
                              child:TextButton(onPressed: (){}, child: Text("FRUITES",style: TextStyle(color: Colors.green))),
                            ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.green)),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 20),
                          child: Container(child: TextButton(onPressed: (){}, child: Text("EXOTIC CUTS",style: TextStyle(color: Colors.green))),decoration: BoxDecoration(borderRadius:
                          BorderRadius.circular(50),border: Border.all(color: Colors.green)),),
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                      ),
                      items: imageSliders,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,),
                    child: Container(height: 75,decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.timer)),
                                Text("30 mins policy")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.track_changes)),
                                Text("Tracability"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20   ),
                            child: Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.home_filled)),
                                Text("Local surrounding")
                              ],
                            ),
                          ),


                        ],

                      ),

                    ),
                  ),



                ],
              ),
              ),
              SliverList(delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 10,),
                    Vegitables()
                  ]
              ))
            ]
        ),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.black  ,unselectedItemColor: Colors.greenAccent[400],
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
              BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account"),

            ])
    );
  }

}




class Vegitables extends StatelessWidget{

  List<String> image=[
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU", "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",

  ];
  List<String> name=[
    "Mango","Pappaya","Tomato","apple","Carrot","Brinjal","Theenga"
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: image.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(name[index]),
            ],
          );
        });
  }
}