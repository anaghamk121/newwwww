// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:newwwww/API%20integration/service/http%20service.dart';
//
// // json data ne ui lek edkknneth controller vazhi aan, because state management kodkkunnu
// // nmk kitye code ne service nn model class vazhi connect cheythitt controller vazhi ui lek
//
// class ProductController extends GetxController {
//   // getx is the state management used here like provider
//   RxBool isLoading = true
//       .obs; //loading is now observable, ui stateless aan so state mangement monitor cheyan aavila so we use getx
//   // ,and obx -observable widget,response kityal ath observable aano nn check cheynm aanenki data pass,
//   // allenki circular progressive indicator work cheynm
//   var productList = [].obs; // product list empty list aan
//
//   void onInit() {
//     // what should happen when the app is loaded
//     loadProducts();
//     super.onInit();
//   }
//
//   void loadProducts() async {
//     try {
//       isLoading(true);
//       var product = await HttpService
//           .fetchProducts(); // fetch the list of products from http class ,fetch cheyth kitya outpuut aan kodukndeth
//       if (product != null) {
//         productList.value =
//             product; // now the list having the value and it is observable too
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }

import 'package:get/get.dart';
import 'package:newwwww/API%20integration/service/http%20service.dart';

class ProductController extends GetxController{
  RxBool isLoading = true.obs;
  var ProductList =[].obs;

  void onInit(){
    loadProducts();
    super.onInit();
  }
  void loadProducts() async{
    try{
      isLoading(true);
      var product = await HttpService.fetchProducts();
      if(product != null){
        ProductList.value=product;
      }
    }finally {
      isLoading(false);
    }
  }
}