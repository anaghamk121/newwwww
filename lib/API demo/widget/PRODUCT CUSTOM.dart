import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:flutter/material.dart';

import '../model/PRODUCT MODEL.dart';

class productcustom extends StatelessWidget{
  final Welcome productlist;
  productcustom(this.productlist);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: CachedNetworkImage(
                imageUrl: productlist.body,
                // image ne  instance variable(model class) nnan edkknneth
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              productlist.title!,
              maxLines: 2,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            if (productlist.title != null)
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  // borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      productlist.title!.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
