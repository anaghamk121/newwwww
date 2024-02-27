
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/state%20management%20using%20provider/screens/wishlist.dart';
import 'package:provider/provider.dart';
import '../provider/movie provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => MovieProvider(), //notify provider ne monitor cheyan movie provider ne vilich
      child: MaterialApp(
        home: providerhome(),
      )));
}

class providerhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies; // watch - read cheyan ,movieproviderlek  movies llw data get cheyan,
    //movies-home pagele list
    var movielist = context.watch<MovieProvider>().wishmovie; // empty list l edth vecha data lek
    //movielist-
    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => providerwishlist()));
                  },
                  icon: Icon(Icons.favorite),
                  label: Text("Go to wishlist ${movielist.length}")),  // movielist  le ethra data ndo ath kanikm
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListView.builder(itemBuilder: (context, index) {
                    var movie = movies[index];
                    return Card(
                      key: ValueKey(movie.title), // title vilichal data kitm , single widget ne monitor cheyan aan value key use cheyyunneth
                      child: ListTile(
                        title: Text(movie.title),
                        subtitle: Text(movie.time ?? "No time"),
                        trailing: IconButton(
                          icon: Icon(Icons.favorite_border),
                          color: movielist.contains(movie)
                              ? Colors.red
                              : Colors.black87,
                          onPressed: () {
                            if (!movielist.contains(movie)) { //contain cheynn illenkil
                              context.read<MovieProvider>().addToList(movie); // add cheythal aan change notify cheya,
                            } else {
                              context.read<MovieProvider>().removeFromList(movie);
                            }
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ))
            ])));
  }
}

/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/state%20management%20using%20provider/screens/wishlist.dart';
import 'package:provider/provider.dart';
import '../provider/movie provider.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => PlantProvider(),
      child: MaterialApp(
        home: providerhome(),
      )));
}

class providerhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var indoorplants = context.watch<PlantProvider>().movies;
    var plantdata = context.watch<PlantProvider>().wishplant;

    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wishlist()));
                  },
                  icon: Icon(Icons.favorite),
                  label: Text("Go to wishlist ${plantdata.length}")),
            SizedBox(height: 20,),
               Expanded(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GridView.builder(gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemBuilder :(context, index) {
                          var plant = indoorplants[index];
                          return Card(
                            key: ValueKey(plant.title),
                            child: ListTile(
                              title:Image.network(plant.title),
                              subtitle: Text(plant.title),
                              //Text(plant.title),
                             // subtitle: Text(plant.time ?? "No time"),
                              trailing: IconButton(
                                icon: Icon(Icons.favorite_border),
                                color: plantdata.contains(plant)
                                    ? Colors.red
                                    : Colors.black87,
                                onPressed: () {
                                  if (!plantdata.contains(plant)) {
                                    context.read<PlantProvider>().addToList(plant);
                                  } else {
                                    context.read<PlantProvider>().removeFromList(plant);
                                  }
                                },
                              ),*/
/*leading:  IconButton(
    icon: Icon(Icons.shopping_cart),
    color: plantdata.contains(plant)
    ? Colors.red
        : Colors.black87,
    onPressed: () {
    if (!plantdata.contains(plant)) {
    context.read<PlantProvider>().addToList(plant);
    } else {
    context.read<PlantProvider>().removeFromList(plant);
    }})*//*

                            ) );
                        }),
                      ),
                    ),),
            ])));}
}
*/

