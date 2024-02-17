import '../model/PRODUCT MODEL.dart';
import 'package:http/http.dart' as http;

class HTTPSERVICE {
  static Future<List<Welcome>> fetchProducts() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200){
      var data = response.body;
      return  welcomeFromJson(data);
    }
    else{
      throw Exception();
    }
  }
}