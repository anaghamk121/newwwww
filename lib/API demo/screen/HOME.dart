import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:newwwww/API%20demo/controller/PRODUCT%20CONTROLLER.dart';

import '../widget/PRODUCT CUSTOM.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    home: httphome(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  )));
}
class httphome extends StatelessWidget{
  final productcontroller controller =Get.put(productcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products'),
        actions: const [
          Icon(Icons.shopping_cart),
        ],),body: Column(
      children: [
        const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ))
              ],
            )),
        Expanded(child: Obx(() {
          if (controller.isloading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
                itemCount: controller.productlist.length,
                // full data kitm
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return productcustom(controller.productlist[
                  index]);

                });
          }
        }))
      ],
    ),
    );
  }
}
