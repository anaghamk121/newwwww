// import 'package:http/http.dart' as http;
// import '../model/product model.dart';
// //http url aan link , athine get cheyan futured aayt or function create cheya,
//
// class HttpService {
//   static Future<List<ProductModel>> fetchProducts() async {
//     var response = await http.get(Uri.parse(
//         "https://fakestoreapi.com/products")); // kitnna response edth vekan aan var response kodkunneth,
//     // await is a futured function,url format l ullathine uri .parse akki mati,
//
//     if (response.statusCode == 200) {
//       // status code , 404 error value aan, 200 is success value
//       var data = response.body; //json nte body part ne datalek edth veka
//       return productModelFromJson(
//           data); // product model from json aan model class l ulleth,ithil ninn decode cheythan edkknneth
//     } else {
//       throw Exception();
//     }
//   }
// }

import '../model/product model.dart';
import 'package:http/http.dart' as http;
class HttpService{
  static Future<List<Welcome>> fetchProducts() async{
    var response = await http.get(Uri.parse("https://fakestoreapi.com/carts"));
    if (response.statusCode == 200 ){
      var data = response.body;
      return welcomeFromJson(
        data);
    }else
      {
        throw Exception();
      }
  }
}