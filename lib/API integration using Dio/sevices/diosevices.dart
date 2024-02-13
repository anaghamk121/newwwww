import 'package:dio/dio.dart';

class DioService {
  Future<dynamic> getData(String url) async { // ,futured function create cheya,get data usecheym
    Dio dio = Dio();
    return await dio.get(url, // psrametere aayt url ne vilika,apo evdano usecheyne avde value kodkkm,async opern aayt kodka,
        options: Options(responseType: ResponseType.json, method: "GET")) // return cheynde function aan getdio.get vilika,
    // optins aayt response type parenj kodka
        .then((respone) { // url kityal mathreme response workcheyan padullu
      return respone;
    });
  }
}