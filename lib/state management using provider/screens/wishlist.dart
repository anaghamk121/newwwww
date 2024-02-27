
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';
import '../provider/movie provider.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: providerwishlist(),
          )));
}


class providerwishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var providerwishlist = context.watch<MovieProvider>().wishmovie;
    //wishmovie- wishlistle add aay vernna list
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wishlist (${providerwishlist.length})"), //add aye data nte count or no koode appbarlek verum
      ),
      body: ListView.builder(itemCount: providerwishlist.length, // wishlist nte countmovie lek edth vechu
          itemBuilder: (context, index) {
        final movie = providerwishlist[index]; //
        return Card(
          key: ValueKey(movie.title),
          child: ListTile(
            title: Text(movie.title),
            trailing: TextButton(
              onPressed: () {
                context.read<MovieProvider>().removeFromList(movie); // add ayeth remove aakan
              },
              child: Text("Remove"),
            ),
          ),
        );
      }),
    );
  }
}

/*

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.darT';
import 'package:provider/provider.dart';
import '../provider/movie provider.dart';

*/
/*void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: providerwishlist(),
          )));
}*//*


class wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlist = context.watch<PlantProvider>().wishplant;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wishlist (${wishlist.length})"),
      ),
      body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: wishlist.length,
          itemBuilder: (context, index) {
            final plant = wishlist[index];
            return Card(
              key: ValueKey(plant.title),
              child: ListTile(
                title:Image.network(plant.title),
                trailing: TextButton(
                  onPressed: () {
                    context.read<PlantProvider>().removeFromList(plant);
                  },
                  child: Text("Remove"),
                ),
              ),
            );
          }),
    );
  }
}*/
