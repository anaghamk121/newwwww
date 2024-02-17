import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/product controller.dart';
import '../widget/product custom widget.dart';
//import 'package:samplefeb/apiIntegration/GET%20Method/controller/ProductController.dart';
//import '../widgets/ProductCustomWidget.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: HttpHome(),
            useInheritedMediaQuery: true,
          )));
}

class HttpHome extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Column(
        children: [
          const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                      // end le data ariyathe kond expanded aaki kodthu
                      child: Text(
                    "Shop Now",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ))
                ],
              )),
          Expanded(child: Obx(() {
            if (controller.isLoading.value) {
              // value loading aano enn nokan
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return GridView.builder(
                  itemCount: controller.productList.length,
                  // full data kitm
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // kitye data grid aayt kitan grid vilich
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return ProdutCustom(controller.productList[
                        index]); // custom lek product list nte index kodth,
                    // grid ne custom aaki design cheyyan
                  });
            }
          }))
        ],
      ),
    );
  }
}
/*

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/product controller.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            home: HttpHome(),
            useInheritedMediaQuery: true,
          )));
}

class HttpHome extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          actions: const [
            Icon(Icons.shopping_cart),
          ],
        ),
        body: Column(
            children: [
        const Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
                child: Text(
                  "grab it now",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ))
          ],
        )),Expanded(child: Obx(() {
    if (controller.isLoading.value) {
    // value loading aano enn nokan
    return const Center(
    child: CircularProgressIndicator(),
    );
    } else {
    return GridView.builder(
    itemCount: controller.ProductList.length,
    // full data kitm
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10),
    itemBuilder: (context, index) {
   */
/* return ProdutCustom(controller.ProductList[
    index]); *//*

                   });
             }
           }))
         ],
       ),
     );
   }
 }
*/
