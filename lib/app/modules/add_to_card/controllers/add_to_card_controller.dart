
import 'package:get/get.dart';

import '../../../models/Products.dart';

class AddToCardController extends GetxController {


  final count = 0.obs;
  int? id;
  Products? product;


  @override
  void onInit() {
    super.onInit();
    // Map<String, dynamic> cartData = Get.arguments;
    // if(cartData != null){
    //   id = cartData['id'];
    // }
    // product = Get.find<HomePageController>().addToCartList.singleWhere((element) => element.id == id);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
