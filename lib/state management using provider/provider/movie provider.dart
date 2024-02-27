
import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../model/movie.dart';

final List<Movie> data = List.generate( // Movie edth vechath  list generate vazhi aan,data enna listlek 100 index ulla list generate cheynm
    100,
    (index) => Movie(
        title: "Movie $index", time: "${Random().nextInt(100) + 60} minute")); // random value aaytan time

class MovieProvider with ChangeNotifier {  // with is a keyword
  final List<Movie> movieHome = data; // moviehome list create cheyth ,data ne edth vech

  List<Movie> get movies => movieHome;   // retrive all the movies,kitye value ne get cheyan, moviehome le value movieslek kitan
  final List<Movie> providerwishlist = []; // wishlist enna empty list vech

  List<Movie> get wishmovie => providerwishlist;


  void addToList(Movie movie) {  //add akan,model class ne vilich, wishlistlek add akan
    providerwishlist.add(movie);
    notifyListeners();  // data add cheythal aa screenil thenne change veran
  }

  void removeFromList(Movie movie) { //wishlistnn remove cheyan, or fav nn remove aakan
    providerwishlist.remove(movie);
    notifyListeners();
  }
}


/*

import 'package:flutter/cupertino.dart';
import 'package:newwwww/convex%20bot.dart';
import '../model/movie.dart';


final List<Plant> data = List.of(PlantCard(name: '', price: , image: '',) as Iterable<Plant>);
*/
/*List.generate(
   20,
        (index) => Plant(*//*

       // title: "Plant" ));
        //"Movie $index", time: "${Random().nextInt(100) + 60} minute"));

class PlantProvider with ChangeNotifier {
  List<Plant> get movieHome => data;

  List<Plant> get movies => movieHome;
  final List<Plant> wishlist = [];

  List<Plant> get wishplant => wishlist;


  void addToList(Plant plant) {
    wishlist.add(plant);
    notifyListeners();
  }

  void removeFromList(Plant plant) {
    wishlist.remove(plant);
    notifyListeners();
  }
}
*/
