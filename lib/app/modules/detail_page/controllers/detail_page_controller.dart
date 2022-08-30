import 'package:get/get.dart';

class DetailPageController extends GetxController {
  //TODO: Implement DetailPageController

  final count = 0.obs;
  final image = "".obs;
  final title = "".obs;
  final subTitle = "".obs;
  final price = "".obs;
  final isSelected = 1.obs;
  final isSelectedReviews = 1.obs;
  @override
  void onInit() {
    super.onInit();
    Map<String,dynamic> data = Get.parameters;
    image.value = data["image"];
    title.value = data["title"];
    subTitle.value = data["subTitle"];
    price.value = data["price"];
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
