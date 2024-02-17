import 'package:get/get.dart';

import '../../API integration/service/http service.dart';

class productcontroller extends  GetxController{
  RxBool isloading = true.obs;
  var productlist  =[].obs;
  void onInit(){
    loadproducts();
    super.onInit();

  }
  void loadproducts() async{
    try{
      isloading(true);
      var product =await HttpService.fetchProducts();
      if(product != null){
        productlist.value=product;
      }
    }finally{
      isloading(false);
    }
  }
}