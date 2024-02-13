// // To parse this JSON data, do
// //
// //     final productModel = productModelFromJson(jsonString);
//
// import 'dart:convert';
//
// List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
//     json.decode(str).map((x) => ProductModel.fromJson(x)));
//
// String productModelToJson(List<ProductModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class ProductModel {
//   //instance variable create cheyth
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//   Rating rating;
//
//   ProductModel({
//     required this.id, // constructor l required aayt kodth
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     required this.rating,
//   });
//
//   factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
//         // list of map aayt ellatinem idelek edth vech
//         id: json["id"],
//         title: json["title"],
//         // titlek edth vech
//         price: json["price"]?.toDouble(),
//         description: json["description"],
//         category: json["category"],
//         image: json["image"],
//         rating: Rating.fromJson(json["rating"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         //tojson cheythtt instance variable lek edth vech
//         "id": id,
//         "title": title,
//         "price": price,
//         "description": description,
//         "category": category,
//         "image": image,
//         "rating": rating.toJson(),
//       };
// }
//
// class Rating {
//   // category pole ulla extra class ann rating
//   double rate;
//   int count;
//
//   Rating({
//     required this.rate,
//     required this.count,
//   });
//
//   factory Rating.fromJson(Map<String, dynamic> json) => Rating(
//         // same as above
//         rate: json["rate"]?.toDouble(),
//         count: json["count"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         // class vilikmbo tojson aaki viliknm
//         "rate": rate,
//         "count": count,
//       };
// }

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  int id;
  int userId;
  DateTime date;
  List<Product> products;
  int v;

  Welcome({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
    required this.v,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    id: json["id"],
    userId: json["userId"],
    date: DateTime.parse(json["date"]),
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "date": date.toIso8601String(),
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "__v": v,
  };
}

class Product {
  int productId;
  int quantity;

  Product({
    required this.productId,
    required this.quantity,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    productId: json["productId"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "productId": productId,
    "quantity": quantity,
  };
}
