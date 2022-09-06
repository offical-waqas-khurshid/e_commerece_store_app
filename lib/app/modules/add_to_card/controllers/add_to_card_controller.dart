
import 'package:get/get.dart';

import '../../../models/Products.dart';
import '../../home_page/controllers/home_page_controller.dart';

class AddToCardController extends GetxController {
  final count = 0.obs;
  int? id;
  Products? product;
  List<Products> cartProducts = [];
  @override
  void onInit() {
    super.onInit();
    // Map<String, dynamic> cartData = Get.arguments;
    // if (cartData != null) {
    //   id = cartData['id'];
    // }
    cartProducts = Get.find<HomePageController>().addToCartList;
    // List<Widget> widgets = [];
    // for (int i = 0;
    //     i < Get.find<HomePageController>().addToCartList.length;
    //     i++) {
    //   widgets.add(Container());
    // }
    // product = Get.find<HomePageController>()
    //     .addToCartList
    //     .singleWhere((element) => element.id == id);
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
