
import 'package:get/get.dart';

import '../../../models/Products.dart';
import '../../home_page/controllers/home_page_controller.dart';

class AddToCardController extends GetxController {
  final count = 0.obs;
  int? id;
  Products? product;
  RxList<Products> cartProducts = <Products>[].obs;
  @override
  void onInit() {
    super.onInit();
    cartProducts = Get.find<HomePageController>().addToCartList;
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
