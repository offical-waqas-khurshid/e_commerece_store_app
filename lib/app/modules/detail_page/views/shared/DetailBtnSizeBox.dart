import 'package:e_commerece_store_app/app/models/Products.dart';
import 'package:e_commerece_store_app/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailBtnSizeBox extends StatelessWidget  {

  int? id;
  Products? product;
  DetailBtnSizeBox(this.product);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.find<HomePageController>().addToCartList.add(product!);
             // if(Get.find<HomePageController>().products[1] ==  Get.find<HomePageController>().addToCartList[1]){
             //  Get.find<HomePageController>().addToCartList.add(product!);
             // }else{
             //   Fluttertoast.showToast(
             //       msg: "This is Center Short Toast",
             //       toastLength: Toast.LENGTH_SHORT,
             //       gravity: ToastGravity.CENTER,
             //       timeInSecForIosWeb: 1,
             //       backgroundColor: Colors.red,
             //       textColor: Colors.white,
             //       fontSize: 16.0
             //   );
             // }
            },
            style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: AppColors.secondary,
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 50.0, right: 50.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text(
              'Add to cart',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            )),
      ),
    );
}
  }
