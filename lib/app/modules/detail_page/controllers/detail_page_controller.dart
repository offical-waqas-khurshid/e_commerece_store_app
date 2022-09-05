import 'package:e_commerece_store_app/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:e_commerece_store_app/app/models/Products.dart';
import 'package:get/get.dart';

class DetailPageController extends GetxController {
  final isSelected = 1.obs;
  final isSelectedReviews = 1.obs;
  int? id;
  Products? product;
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    Map<String,dynamic> data = Get.arguments;
    if(data!=null) {
      id = data["id"];
    }
    product = Get.find<HomePageController>().products.singleWhere((element) => element.id == id);
    isLoading.value = false;
  }

}
