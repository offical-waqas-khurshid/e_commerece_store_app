import 'package:e_commerece_store_app/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:e_commerece_store_app/app/models/Products.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class DetailPageController extends GetxController {
  final isSelected = 1.obs;
  final isSelectedReviews = 1.obs;
  final isSelectedSize = 1.obs;
  int? id;
  Products? product;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    Map<String, dynamic> data = Get.arguments;
    if (data != null) {
      id = data["id"];
    }
    product = Get.find<HomePageController>()
        .products
        .singleWhere((element) => element.id == id);
    isLoading.value = false;
  }


  selectSize(int size){
    isSelectedSize.value = size;
    product?.size = size!;
  }

  addToCart(){
    if(!Get.find<HomePageController>().addToCartList.contains(product)){
      Get.find<HomePageController>().addToCartList.add(product!);
      Get.find<HomePageController>().products.indexWhere((product1)=>product1.id == product?.id);
    }else{
      Fluttertoast.showToast(
          msg: "Product is already in cart",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }
}
